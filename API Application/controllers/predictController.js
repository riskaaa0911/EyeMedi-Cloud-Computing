const axios = require('axios');
const { Storage } = require('@google-cloud/storage');
var path = require('path');
const uuid = require('uuid');
require("dotenv").config()

const db = require("../database/models")
const Output = db.Output;

const storage = new Storage({
    projectId: process.env.GCP_PROJECT_ID,
    credentials: {
        client_email: process.env.GCP_CLIENT_EMAIL,
        private_key: process.env.GCP_PRIVATE_KEY
    }
});

const bucket = storage.bucket(process.env.GCS_BUCKET);

const uuidv1 = uuid.v1;


const diseasePredict = async (req, res) => {
    if (req.file) {
        const ext = path.extname(req.file.originalname).toLowerCase();

        if (ext !== '.png' && ext !== '.jpg' && ext !== '.jpeg') {
            return res
                .status(404)
                .json({
                    error: true,
                    message: 'Upload gambar dalam format yang sesuai(.png, .jpg, .jpeg)'
                });
        }

        const newFilename = `${uuidv1()}-${req.file.originalname}`;
        const blob = bucket.file(`predict_uploads/${newFilename}`);
        const blobStream = blob.createWriteStream();

        blobStream.on('error', (error) => {
            return res
                .status(400)
                .json({
                    status: 'gagal',
                    message: error
                });
        });

        blobStream.on('finish', async () => {
            const filename = blob.name.replace('predict_uploads/', '');

            try {
                // Kirim permintaan prediksi ke API eksternal
                const getPrediction = await axios.post(process.env.API_PREDICT, {
                    filename: filename
                });
                const predictDisease = getPrediction.data;

                const findOutput = await Output.findOne({
                    where: {
                        nama_penyakit: predictDisease.nama_penyakit
                    }
                });

                if (!findOutput) {
                    const output = await Output.create(predictDisease);
                    return res.json(output);
                }
                else {
                    res.json(findOutput);
                }

            } catch (error) {
                console.log(error);
                return res
                    .status(400)
                    .json({
                        status: 'gagal',
                        message: 'Tidak terdeteksi'
                    });
            }
        });

        blobStream.end(req.file.buffer);
    } else {
        return res
            .status(400)
            .json({
                error: true,
                message: 'Upload gambar'
            });
    }
};


module.exports = {
    diseasePredict
};