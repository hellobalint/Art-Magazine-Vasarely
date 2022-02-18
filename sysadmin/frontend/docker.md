// minden docker-es dolgot töröl:
sudo docker rmi -f $(docker images -aq)

// copy file from local to remote destination

scp -i ~/.ssh/id_rsa.pub FILENAME USER@SERVER:/home/USER/FILENAME