import os
from google.cloud import storage
import tensorflow as tf
from io import BytesIO
from flask import Flask, request, jsonify
from keras.models import load_model
import numpy as np
from tensorflow.keras.applications.efficientnet import preprocess_input
from tensorflow.keras.preprocessing import image


app = Flask(__name__)
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'mediscan-credentials.json'
storage_client = storage.Client()


def req(y_true, y_pred):
    req = tf.metrics.req(y_true, y_pred)[1]
    tf.keras.backend.get_session().run(tf.local_variables_initializer())
    return req


def preprocess_input(img):
    # Sesuaikan fungsi pre-processing sesuai dengan yang digunakan saat melatih model
    # Contoh: scalar(img)
    processed_img = img  # Tidak perlu dibagi dengan 255 jika fungsi scalar tidak melakukannya
    return processed_img


def load_and_process_image(image_path):
    target_size = (224, 224)  # Ganti dengan ukuran yang diinginkan
    img = image.load_img(image_path, target_size=target_size)
    img_array = image.img_to_array(img)
    img_array = np.expand_dims(img_array, axis=0)
    processed_img = preprocess_input(img_array)
    return processed_img


model = load_model('model.h5', custom_objects={'req': req})


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        try:
            image_bucket = storage_client.get_bucket('mediscan-app')
            filename = request.json['filename']
            img_blob = image_bucket.blob('predict_uploads/' + filename)
            img_path = BytesIO(img_blob.download_as_bytes())
        except Exception:
            respond = jsonify({'message': 'Error loading image file'})
            respond.status_code = 400
            return respond

        images = load_and_process_image(img_path)

        pred_disease = model.predict(images)
        max_prediction_index = np.argmax(pred_disease)

        # Mapping indeks prediksi ke nama penyakit, definisi atau penjelasan penyakit, dan penyebabnya
        disease_names = ['Cataract', 'Diabetic Retinopathy',
                         'Glaucoma', 'Normal']
        definition = ['Katarak adalah kondisi medis di mana lensa mata menjadi keruh dan berawan, sehingga mengganggu penglihatan.',
                      'Retinopati Diabetik adalah penyakit mata yang mempengaruhi orang yang memiliki diabetes mengakibatkan kerusakan pada pembuluh darah retina mata, terutama pada jaringan yang sensitif terhadap cahaya.',
                      'Glaukoma adalah kondisi medis berupa gangguan penglihatan yang disebabkan oleh kerusakan saraf mata, khususnya saraf optik.',
                      'Hasil prediksi menunjukan mata Anda normal atau tidak termasuk penyakit Glaukoma, Katarak, dan Retinopati Diabetik',
                      ]
        reason = ['Kerusakan protein pada lensa mata yang menyebabkan penglihatan menjadi kabur dan berkabut atau kurang berwarna, penuaan, cedera mata, diabetes, paparan sinar UV, merokok, dan konsumsi alkohol',
                  'Suhu darah dalam mata meningkat , Tekanan darah tinggi, Kolesterol tinggi, Hamil, Penggunaan tabak, Ketidakpastian dalam mengendalikan gula darah dan tekanan darah',
                  'Peningkatan tekanan intraokular yaitu tekanan di dalam mata yang terjadi ketika produksi dan atau drainase cairan mata tidak seimbang, peningkatan usia, riwayat kesehatan seperti diabetes dan hipertensi, cedera mata, dan penggunaan obat-obat tertentu seperti steroid',
                  'Tidak Ada',
                  ]

        predicted_disease = disease_names[max_prediction_index]
        definition_disase = definition[max_prediction_index]
        reason_disease = reason[max_prediction_index]

        result = {
            "nama_penyakit": predicted_disease,
            "definisi": definition_disase,
            "penyebab": reason_disease
        }

        respond = jsonify(result)
        respond.status_code = 200
        return respond

    return 'OK'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')