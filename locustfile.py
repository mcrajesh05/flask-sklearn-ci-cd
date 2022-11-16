from locust import HttpUser, task

class flaskSklearnUser(HttpUser):
    # POST method predict
    payload={
        "CHAS":{ "0":0},
        "RM":{ "0":6.575},
        "TAX":{"0":296.0},
        "PTRATIO":{"0":15.3},
        "B":{"0":396.9},
        "LSTAT":{"0":4.98}
        }
          
    
    @task
    def flask_sklearn_load_test(self):
        self.client.post("https://flaskmlservice.azurewebsites.net:443/predict",json=self.payload)
