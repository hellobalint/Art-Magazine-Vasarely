sudo systemctl status tomcat.service // check if tomcat is running. if yes, stop it
sudo systemctl disable tomcat.service

chmod +x /home/ubuntu/jarfile.sh // make script executable

crontab -e // open crontab and add line bellow
@reboot /home/ubuntu/jarfile.sh
