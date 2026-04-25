pipeline {
    agent any
	tools {
	maven 'mymave'
	jdk 'myjdk'
	}

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/varsha-0411/proj-1.git']])            }
        }

        stage('Build') {
    steps {
        sh 'mvn clean package -DBUILD_NUMBER=${BUILD_NUMBER}'
    }
}

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }



        stage('JENKINS TO NEXUS') {
            steps {
              withMaven(globalMavenSettingsConfig: 'settings.xml', jdk: 'myjdk', maven: 'mymave', traceability: true) {
             sh 'mvn deploy'
             }
            }
        }
stage('Download WAR') {
  steps {
    withCredentials([usernamePassword(
        credentialsId: 'nexus-creds',
        usernameVariable: 'NEXUS_USER',
        passwordVariable: 'NEXUS_PASS'
    )]) {
       sh '''
        wget --user=$NEXUS_USER --password=$NEXUS_PASS \
		http://13.125.21.150:8081/repository/maven-releases/com/tes/tes-institute/1.0.${BUILD_NUMBER}/tes-institute-1.0.${BUILD_NUMBER}.war
        '''
		
		
    }
  }
}

        stage('Build Docker Image') {
            steps {
                 sh """
docker build --no-cache --build-arg WAR_FILE=tes-institute-1.0.${BUILD_NUMBER}.war -t varsha0411/proj1:latest .
"""
            }
        }
		stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push varsha0411/proj1:latest'
            }
        }
		        stage('K8s Deployment') {
    steps {
        withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]) {
            sh """
            export KUBECONFIG=$KUBECONFIG
            kubectl get nodes
            kubectl apply -f tesdep.yml
            kubectl rollout restart deployment myapp-deployment
            """
        }
    }
}

       
    }
}
