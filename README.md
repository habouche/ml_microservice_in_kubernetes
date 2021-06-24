[![<habouche>](https://circleci.com/gh/habouche/ml_microservice_in_kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/habouche/ml_microservice_in_kubernetes)

## Project Overview

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project is about operationalizing a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Steps to build and test the project

The files in this project are :

* .crcleci/config.yml : CI configuration file used in circleci for auromatic source code integration
* model_data : data used to train the prediction model
* app.py : the flask application that serve the prediction
* Dockerfile : Used to build a docker image for this project
* make_prediction.sh : posts the features to the flask API to make a prediction
* Makefile : steps to setup the project(includes setting up a python venv, intalling dependencies and linting source code)
* run_docker.sh : builds project's docker image and runs it in a container
* upload_docker.sh: tags and uploads the created image to a docker hub registry
* run_kubernetes.sh : deploys the image into a local kubernetes cluster (use minikube and kubectl) 

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Make prediction : `./make_prediction.sh`


### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
