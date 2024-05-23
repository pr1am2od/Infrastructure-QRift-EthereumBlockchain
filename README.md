# This repository contains the source code, deployment configuration, and CI/CD pipeline for a web application that utilizes Web3.js to verify prime numbers

**Features:**

1   Leverages Web3.js library for interaction with a user-specified Ethereum node.
2   Provides a user interface for entering a number and checking its primality on the blockchain.
3   Securely deployed using Docker containers and Kubernetes.
4   Automated build, testing, and deployment through a CI/CD pipeline.

**Project Structure:**

1   Source code Web3 app/: Contains the source code for the Web3 application.
2   Dockerfiles/: Defines the Docker image for the application.
3   Kubernetes deployment/: Configures the Kubernetes deployment for the application.
4   Pipeline configuration/ : Defines the CI/CD pipeline for automated build, push, and deployment.
5   Terraform/: Contains the Iac code and the framework for the terraform of this project
6   Logs, tfsec and results/: Contains the logs , terraform security scans, results of the integrations and deployments, Markdown/Terraform linter is passsed screenshots of working station.

**Getting Started:**

**Prerequisites:**

1   Node.js and npm (or yarn) installed on your system.
2   A Docker registry account (e.g., Docker Hub).
3   A Kubernetes cluster with kubectl configured for access.

**Building the Docker Image:**

1  Navigate to the project directory in your terminal.
2  Run the following command to build the Docker image:

´´´Bash

docker build -t your-username/web3-prime-number .

´´´

**Deploying to Kubernetes:**

1  Push the image to your Docker registry:

´´´Bash

docker push your-username/web3-prime-number

´´´

1  Update the deployment.yaml file with your image name and registry details (if needed).
    2  Apply the deployment to your Kubernetes cluster using kubectl:

´´´Bash

kubectl apply -f deployment.yaml

´´´

**Accessing the Application:**

Once the deployment is successful, the application will be accessible through a service. You'll need to expose the service using a port-forward or ingress controller for external access. Refer to your Kubernetes cluster documentation for details on setting up service exposure.

**CI/CD Pipeline:**

The .gitlab-ci.yml file defines a CI/CD pipeline that automates the build, image push, and deployment process. It is recommended to configure your CI/CD tool (e.g., GitLab CI/CD) to trigger this pipeline on code pushes.

**Contributing:**

We welcome contributions to this project! Please feel free to fork the repository, make changes, and submit pull requests.

**License:**

This project is licensed under the Apache License .

**Disclaimer:**

Consider security best practices, proper error handling, and user authentication for a production-ready deployment.
