[![Flask-Sklearn-CI-CD-Pipeline, python app](https://github.com/mcrajesh05/flask-sklearn-ci-cd/actions/workflows/python-app.yml/badge.svg?branch=main)](https://github.com/mcrajesh05/flask-sklearn-ci-cd/actions/workflows/python-app.yml)

## Overview
This project is a Python flask app that serves out predictions (inference) about housing prices through API calls which can be extended to any pre-trained machine learning model, such as those for image recognition and data labeling. The project provides pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. I will build a Github repository from scratch and create a scaffolding that will assist me in performing both Continuous Integration and Continuous Delivery of this proejct. I will use Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle and then integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service

## Project Plan

### A link to a Trello board for the project
   https://trello.com/invite/b/RiLD4v8E/ATTI2bb7d86a72ce650e01e45df54cc9724149EC5FD6/flask-ml-cicd-pipeline-project-board
### A link to a spreadsheet that includes the original and final project plan
[CI-CD-Pipeline-Project-Management Plan.xlsx](https://github.com/mcrajesh05/flask-sklearn-ci-cd/files/10019571/CI-CD-Pipeline-Project-Management.Plan.xlsx)
### A link to a spreadsheet that includes estimation plan
[CI-CD-Pipeline-Project-Estimation.xlsx](https://github.com/mcrajesh05/flask-sklearn-ci-cd/files/10019578/CI-CD-Pipeline-Project-Estimation.xlsx)

## Instructions for CI-CD project

### Architectural Diagram (Shows how key parts of the system work)>
![image](https://user-images.githubusercontent.com/31588719/201996904-336fa280-bf45-4905-87d7-bd08a38ca528.png)

###  Instructions for running the Python project.
A pdf document : ci-cd-pipeline-project.pdf is provided for step by step instrucntions.
#### Project running on Azure App Service
![image](https://user-images.githubusercontent.com/31588719/201898607-ed5af84c-19ca-45ad-b666-8292056610b6.png)

#### Project cloned into Azure Cloud Shell
![image](https://user-images.githubusercontent.com/31588719/201898930-c2c37881-7fa4-4d6e-a182-9b37c84f6e3a.png)

#### Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://user-images.githubusercontent.com/31588719/201897490-72dab226-2b39-4a72-8d81-4537e129e16e.png)

![image](https://user-images.githubusercontent.com/31588719/201897657-d3b4f10d-a764-401e-9aa6-19864e544206.png)

#### Output of a test run
![image](https://user-images.githubusercontent.com/31588719/201897140-55d32cb4-7688-416a-89fa-0ebf0ce0b3aa.png)

#### Successful deploy of the project in Azure Pipelines. 
![image](https://user-images.githubusercontent.com/31588719/201896755-ad2af0e8-3b20-4987-b122-9b7c74c78c1a.png)

#### Running Azure App Service from Azure Pipelines automatic deployment
![image](https://user-images.githubusercontent.com/31588719/201896894-211d1337-e315-49f5-ac13-c86cc76846d1.png)


#### Successful prediction from deployed flask app in Azure Cloud Shell. The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```
![image](https://user-images.githubusercontent.com/31588719/201994925-66269602-5058-4b82-ad79-7a51cb1375c2.png)


#### Output of streamed log files from deployed application
![image](https://user-images.githubusercontent.com/31588719/201896358-326c7e3f-75e0-4d00-b16e-21e84825d6e6.png)

## Load test an application using Locust.
![image](https://user-images.githubusercontent.com/31588719/202239096-69f65fd1-88b6-4d9d-9bf2-4cb33d59ac32.png)
![image](https://user-images.githubusercontent.com/31588719/202239071-2fff3e92-4cc5-49d5-9a81-23d5d80172a0.png)

## Test an application inside of Azure Pipelines
![image](https://user-images.githubusercontent.com/31588719/202239610-603e4482-ad53-4fb7-8acd-af299396c5cd.png)

## Enhancements

This entire project can work as scaffold for new any pre-trained machine learning model project. We just need to provide trained memory object to read and predict. For example, image recognition and data labeling, credit risk forecast, Predict net promoter score etc.

## Demo 

A link Screencast on YouTube

https://youtu.be/IR_Dw_Gvi-o


