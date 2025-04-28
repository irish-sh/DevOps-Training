pipeline {
    agent any

    environment {
        SHARED_FOLDER = 'D:\\Shared'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/irish-sh/DevOps-Training.git'
            }
        }

        stage('Build') {
            steps {
                bat 'scripts\\build.bat'
            }
        }

        stage('Test') {
            steps {
                bat 'tests\\test.bat'
            }
        }

        stage('Run Application') {
            steps {
                bat 'scripts\\run.bat'
            }
        }

        stage('Zip Artifacts') {
            steps {
                bat 'scripts/zip_artifacts.bat'
            }
        }

        stage('Cleanup Old Zips') {
            steps {
                bat 'scripts/cleanup.bat'
            }
        }

        stage('Send Email') {
            steps {
                emailext(
                    subject: "Build Successful: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                    body: """
                        Hi Mentor,

                        Please find attached the latest build artifacts and test reports.

                        Regards,
                        Jenkins
                    """,
                    attachLog: true,
                    attachmentsPattern: 'D:\\Shared\\*.zip',
                    to: 'rohitp@pre-scient.com'
                )
            }
        }
    }

    post {
        failure {
            emailext(
                subject: "Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: "Build failed. Please check Jenkins console output.",
                to: 'rohitp@pre-scient.com'
            )
        }
    }
}
