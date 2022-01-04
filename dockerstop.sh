sudo docker ps -a | grep vikson36/dockerpoc |  awk '{print $1}'  | xargs docker stop
