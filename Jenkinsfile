pipeline {

  agent any
   
  /*environment {
   // SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }*/
  stages {

   stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
    /* stage('change_dir') {
      steps {
        dir("/var/lib/jenkins/workspace/Terrafomr_0.11"){
          sh 'pwd'
          sh 'whoami'
          sh 'env'
          sh './var/lib/jenkins/workspace/Terrafomr_0.11/source_env.sh'

        }
        
      }
    } */
    stage('Source environment'){
      steps {
        sh './var/lib/jenkins/workspace/source_env.sh'
      }
    } 
    stage('TF Plan') {
      steps {
          
          sh 'terraform init'
          sh 'terraform plan'
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

   /* stage('TF Apply') {
      steps {
          sh 'terraform apply -auto-approve'
      } 
    } */

  } 

}
