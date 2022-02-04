cd /tmp
sudo mkdir -p /usr/local/apache/apache-tomcat-7
sudo mkdir -p /usr/local/apache/images
sudo tar xzvf apache-tomcat-8.5.70.tar.gz -C /usr/local/apache/apache-tomcat-7 --strip-components=1
cd /usr/local/apache/apache-tomcat-7/
sudo chgrp -R cisco /usr/local/apache/apache-tomcat-7
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R cisco webapps/ work/ temp/ logs/
sudo systemctl daemon-reload
sudo systemctl start apache-tomcat-7
sudo ufw allow 8080
sudo apt install git -y
#cd /opt/appdynamics
#sudo chown -R cisco:cisco /opt/appdynamics
#git clone https://github.com/Appdynamics/DevNet-Labs.git
#sudo chmod 754 /opt/appdynamics/DevNet-Labs/applications/Load-Generator/phantomjs/*.sh

