# EyeMedi-Cloud-Computing

## Featured Technologies

-   **Language** : JavaScript, Python
-   **Framework** : Node.Js Express to create application API and Flask API to create ML model API (API Predict). The prediction API provides prediction results to the application API, so that the application accesses the prediction API to get eye disease predictions through the application API
-   **Google Cloud Platform (GCP)** : Cloud SQL(MYSQL) to store and read data from applications, CLoud Run for deploy API, and Cloud Storage to store image data for predictions.
-   **Postman** : to test API
-   **Json** Web Token (JWT) authentication for login

## Steps to Run API in Locally

1. Cataract
2. Diabetic Retinopathy
3. Glaucoma
4. Normal

## Steps to Deploy API with Cloud Run

1. Looking for references dataset
2. labeling each data
3. Divide the data in a ratio of 80% (train), 10% (validation) and 10% (test)
4. Augmenting image data and Tuning hyperparameter
5. Conduct machine learning model training experiments with 10,000 to 20,000 train steps
6. Evaluate the machine learning model 
7. Testing real data using another image
8. Save the model with format h5
9. Deploy the model 




