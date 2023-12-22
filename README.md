# EyeMedi-Cloud-Computing

## Featured Technologies

-   **Language** : JavaScript, Python
-   **Framework** : Node.Js Express to create application API and Flask API to create ML model API (API Predict). The prediction API provides prediction results to the application API, so that the application accesses the prediction API to get eye disease predictions through the application API
-   **Google Cloud Platform (GCP)** : Cloud SQL(MYSQL) to store and read data from applications, CLoud Run for deploy API, and Cloud Storage to store image data for predictions.
-   **Postman** : to test and documentation API
-   **Json** Web Token (JWT) authentication for login

## Steps to Run API in Locally
### API Predict
This is a python code, so make sure you have python installed on your system.

1. Clone the repository then open it using your code editor.
2. Download the model file with the __.h5__ file format (or you can download it manually [here](https://drive.google.com/file/d/1j3VYJGPbBqqppTe1MC9rGBKt9Mr3nDIy/view?usp=sharing)) and name it "__model.h5__" (to match with the scripts), then move it to the root directory of this project.
3. This code is using Google Cloud Storage, so you have to make your own GCS Bucket, make a folder named __predict_uploads__ inside the bucket, get the credentials file (.json file) and name it "__mediscan-credentials.json__" (to match with the scripts) then copy it to the root directory of this project.
4. Go to __main.py__ edit the code in line 46, change '__mediscan-app__' with the name of the bucket that you created in the previous step.
5. Open terminal in the project root directory, then run `pip install -r requirements.txt` to install the dependencies.
6. Run the app using the command: `python main.py`.
7. By default, the server will run on the localhost with the port 5000, open [http://localhost:5000](http://localhost:5000) to view it in your browser.
8. If it shows 'OK' then you have successfully run the predict api.

### API Application
1. Clone the repository then open it using your code editor.
2. In the root directory of this project, make a new file named __.env__ to provide the configurations needed.
3. Provide these details in the __.env__ file:
```
# Fill "" with the url of the predict api 
API_PREDICT=""
# Fill "" with your database username ex: root
DB_USERNAME=""
# Fill "" with your database password
DB_PASSWORD=""
# Fill "" with your database host name ex: localhost
DB_HOSTNAME=""
# This is the database name, no need to change it
DB_NAME="db_mediscan"
# No need to change this
JWT_KEY="onpiece12345"
# Fill "" with the bucket name you created in the previous step
GCS_BUCKET=""
# Fill "" with the project_id value from mediscan_credentials.json file
GCP_PROJECT_ID=""
# Fill "" with the client_email value from the sa-lindungi-credentials.json file
GCP_CLIENT_EMAIL=""
# Fill "" with the private_key value from the sa-lindungi-credentials.json file
GCP_PRIVATE_KEY=""
```
5. Open terminal in the project root directory, then run `npm install` to install the dependencies.
6. Run these commands to configure the database migrations:\
`npx sequelize-cli db:create`\
`npx sequelize-cli db:migrate`\
`npx sequelize-cli db:seed:all`
7. Run the app using the command: `npm run start`.
8. The server will run in the localhost with the port 8080, open [http://localhost:8080](http://localhost:8080) to view it in your browser.
9. If it doesn't show any errors then you have successfully run the service.

## Steps to Deploy API with Cloud Run
### API Predict
1. Same with steps in locally 
2. Deploy to Cloud Run with command `gcloud run deploy` 
### API Application
1. Same with steps in locally and add file .python-version and fill use version Python
2. Deploy to Cloud Run with command `gcloud run deploy` 




