# Deploying Java Spring Boot Application using Jenkins and Setting Up a Pipeline

## Start Jenkins
To start Jenkins, download the `jenkins.war` file and run the following command:
```sh
java -jar jenkins.war
```
This will start Jenkins on the default port (typically `8080`). Open `http://localhost:8080` in your browser and follow the setup instructions.

## Create a New Jenkins Job
![image](https://github.com/user-attachments/assets/84b1dc84-2539-48aa-a124-29918a985700)

## Configure the Job
Ensure your Jenkins job is configured properly:
![Screenshot (1086)](https://github.com/user-attachments/assets/ccde1dbf-bf82-470a-867f-77ca2524f87c)
![Screenshot (1087)](https://github.com/user-attachments/assets/a2f8f565-7494-4b68-a0c7-f901575abb54)
![Screenshot (1088)](https://github.com/user-attachments/assets/ac3d2291-46d3-4db1-9331-466d12c12375)

## Jenkins Pipeline Script
Use the following pipeline script to build, test, package, containerize, and deploy the Spring Boot application:
```groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/sonam-niit/springproject.git'
                bat "./mvnw compile"
                echo 'Building the Project with Maven compile'
            }
        }

        stage('Test') {
            steps {
                bat "./mvnw test"
                echo 'Testing the Project with Maven test'
            }
        }

        stage('Package') {
            steps {
                bat "./mvnw package"
                echo 'Packaging the Project with Maven package'
            }
        }

        stage('Containerize') {
            steps {
                bat "docker build -t myapp ."
                echo 'Containerizing the App with Docker'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Check if the container exists
                    def containerExists = bat(script: 'docker ps -aq -f name=sbapp', returnStdout: true).trim()

                    if (containerExists) {
                        echo 'Stopping and removing existing container...'
                        bat(script: 'docker stop sbapp', returnStatus: true)
                        bat(script: 'docker rm sbapp', returnStatus: true)
                    } else {
                        echo 'No existing container found. Proceeding with deployment.'
                    }
                }

                // Run Docker container
                bat "docker run -d --name sbapp -p 9092:8082 myapp"
                echo 'Deploying the App with Docker'
            }
        }
    }
}
```

## Running the Job
![Screenshot (1056)](https://github.com/user-attachments/assets/bf1f1c32-c4b2-4ade-8930-72ad9d014867)
![image](https://github.com/user-attachments/assets/795b45a6-d30f-48e3-8228-06875c584b9f)

## Checking the Running Container
![Screenshot (1095)](https://github.com/user-attachments/assets/8872b61b-32ed-4c2f-9269-43c34d864917)

## Checking the Deployed Application
Access the application at `http://localhost:9092`
![Screenshot (1052)](https://github.com/user-attachments/assets/94a36cde-9f4e-4e01-b745-7cb8663025ca)
Access the application at `http://localhost:9092/api/product/5627`
![Screenshot (1058)](https://github.com/user-attachments/assets/d01cff81-7e71-4eca-8d7b-8b26fc47237a)

## Build Before Changes
![Screenshot (1059)](https://github.com/user-attachments/assets/a27400f6-d042-4eb7-8f14-49b28b3bf2c8)
![Screenshot (1057)](https://github.com/user-attachments/assets/b3e63ba4-3f92-47fd-b5b8-f5759a462fc5)

## Build After Changes
Jenkins will automatically trigger a new build upon detecting changes in the repository:
![Screenshot (1060)](https://github.com/user-attachments/assets/510f057d-6297-4a6a-8765-0934c10f496b)
![Screenshot (1061)](https://github.com/user-attachments/assets/c29ddeab-489e-434d-a234-1ee6e24d81e4)
