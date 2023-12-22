# EyeMedi-Cloud-Computing

## Featured Technologies

-   **Language** : JavaScript, Python
-   **Framework** : Node.Js Express to create application API and Flask API to create ML model API (API Predict). The prediction API provides prediction results to the application API, so that the application accesses the prediction API to get eye disease predictions through the application API
-   **Google Cloud Platform (GCP)** : Cloud SQL(MYSQL) to store and read data from applications, CLoud Run for deploy API, and Cloud Storage to store image data for predictions.
-   **Postman** : to test and documentation API
-   **Json** Web Token (JWT) authentication for login

## Steps to Run API in Locally
### API Predict
1. Ensure that Python is installed on your system, then clone the repository and open it using your preferred code editor.
2. Download the model file in the __.h5__ file format [here](https://drive.google.com/file/d/1j3VYJGPbBqqppTe1MC9rGBKt9Mr3nDIy/view?usp=sharing). Rename the file to "__model.h5__" and move it to the project's root directory.
3. As the code utilizes Google Cloud Storage (GCS), create your GCS Bucket. Inside the bucket, create a folder named __predict_uploads__. Acquire the credentials file (in .json format) and name it "__mediscan-credentials.json__". Copy this file to the project's root directory.
5. Navigate to __main.py__, edit the code at line 46, replacing '__mediscan-app__' with the name of the bucket you created in the previous step.
7. Open the terminal in the project's root directory and execute `pip install -r requirements.txt` to install the necessary dependencies.
8. Run the application with the command: `python main.py`.
9. By default, the server will be hosted on localhost using port 5000. Open [http://localhost:5000](http://localhost:5000) in your browser.
10. If it displays 'OK,' you have successfully launched the predict API.

### API Application
1. Clone the repository and open it using your chosen code editor.
2. Create a new file named .env in the project's root directory to input the necessary configurations.
3. Populate the .env file with the following details, replacing "" with the appropriate values:
```
# JWT key, no need to change this
JWT_KEY="onpiece12345"
# Enter your database username (e.g., root)
DB_USERNAME=""
# Enter your database password
DB_PASSWORD=""
# Specify your database host name (e.g., localhost or IP Public in database Cloud SQL)
DB_HOSTNAME=""
# Keep the database name as "db_mediscan"
DB_NAME="db_mediscan"
# Provide the URL of the predict API
API_PREDICT=""
# Fill with the bucket name created in the previous step
GCS_BUCKET=""
# Fill with the project_id value from mediscan_credentials.json file
GCP_PROJECT_ID=""
# Fill with the client_email value from mediscan-credentials.json file
GCP_CLIENT_EMAIL=""
# Fill with the private_key value from the mediscan-credentials.json file
GCP_PRIVATE_KEY=""

```
5. Open the terminal in the project's root directory, then execute npm install to install the required dependencies.
6. Configure the database migrations with the following commands:
`npx sequelize-cli db:create`
`npx sequelize-cli db:migrate`
`npx sequelize-cli db:seed:all`
7. Start the application using the command: `npm run start`.
8. The server will be hosted on localhost using port 8080. Open [http://localhost:8080](http://localhost:8080) in your browser.
9. If there are no errors, you have successfully launched the service.

## Steps to Deploy API with Cloud Run
### API Predict
1. Same with steps in locally 
2. Deploy to Cloud Run with command `gcloud run deploy` 
### API Application
1. Same with steps in locally and add file .python-version and fill the version of Python you are using
2. Deploy to Cloud Run with command `gcloud run deploy` 




