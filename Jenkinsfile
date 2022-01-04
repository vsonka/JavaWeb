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
				}
			}
		}
		stage('Deploy')
		{
			steps
			{
				script
				{
				         bat "copy C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\JavaWeb\\target\\*.war c:\\PROGRA~1\\ApacheSoftwareFoundation\\Tomcat85\\webapps\\JenkinsWar.war"
                	   		 powershell '''
						Restart-Service -Name Tomcat8
					'''
				}
			}
		}

    }
}
