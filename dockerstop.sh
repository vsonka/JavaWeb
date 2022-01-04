sudo docker ps -a | grep vikson36/dockerpoc |  awk '{print $1}'  | xargs docker stop > /dev/null 2>&1 echo 'stopped container' || echo 'nothing to stop'
