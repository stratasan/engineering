#!/usr/bin/env groovy
if (env.BRANCH_NAME == 'master') {
  node('ec2') {
    stage('Checkout') {
      checkout scm
    }
    timestamps {
      try {
        stage('Deploy') {
          docker.image('python:3.6-alpine').inside("-u 0") {
            sh '''
            pip install -r requirements.txt
            ./deploy.sh
            '''
          }
        }
        currentBuild.result = 'SUCCESS'

      } catch (err) {
        currentBuild.result = 'FAILURE'
        throw err
      } finally {
        node('master') {
          logstashSend failBuild: false
        }
      }
    }
  }
}
