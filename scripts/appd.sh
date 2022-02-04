#!/bin/bash
echo "cisco ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/cisco
apt update
apt install openjdk-8-jdk -y
apt install curl -y
apt install jq -y

#END

