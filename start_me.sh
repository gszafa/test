#!/bin/bash

python_password=$1

echo "##########################"
echo " installing prerequisites "
echo "##########################"

sudo apt-get install ansible vagrant virtualbox curl -y

echo "##########################"
echo "    starting vagrant "
echo "##########################"
cd vagrant;
vagrant up;

echo "##########################"
echo "    starting ansible "
echo "##########################"

ansible all -i ../ansible/hosts -m ping --private-key=".vagrant/machines/default/virtualbox/private_key"

ansible-playbook -i ../ansible/hosts ../ansible/main.yaml --extra-vars "mysql_python_password=$python_password" --private-key=".vagrant/machines/default/virtualbox/private_key" --flush-cache


echo "##########################"
echo "   testing application "
echo "##########################"

echo "execute:"
echo "curl 192.168.33.11/cgi-bin/app.py"
echo ""
echo "results:"
curl 192.168.33.11/cgi-bin/app.py
