pipeline {
    agent any
  tools
   {
    maven 'M2_HOME'
   }
    stages {
	
		stage('Checkout') 
		{
			steps 
			{
				git branch: 'main',
				credentialsId: '35798b44-1c58-4e53-aafd-318249a588cb',
				url: 'https://github.com/vsonka/JavaWeb.git'
			}
		}
		stage('Build and Package')
		{
			steps
			{
				script
				{
					 bat "mvn clean package"
            				 bat copy "C:\\Vikson\\devopstraining\\code\\Web\\target\\*.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\JenkinsWar.war"
				}
			}
		}

    }
}
