#!/usr/bin/env groovy
node('ec2') {
  stage('Checkout') {
    checkout scm
  }
  timestamps {
    try {
      stage('Deploy') {
        docker.image('python:3.6-alpine').inside("-u 0") {
          sh '''#!/bin/bash -ex
          pip install -r requirements.txt
          ./deploy.sh
          '''
        }
      }
      currentBuild.result = 'SUCCESS'

    } catch (err) {
      currentBuild.result = 'FAILURE'
      notifier.notifyError(err)
      throw err
    } finally {
      notifier.notifyResult()
      node('master') {
        logstashSend failBuild: false
      }
    }
  }
}
