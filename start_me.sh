#!/bin/bash

sudo apt-get install ansible vagrant virtualbox curl -y


echo "##########################"
echo "    starting vagrant "
echo "##########################"
cd vagrant;
vagrant up;
sleep 60;

echo "##########################"
echo "    starting ansible "
echo "##########################"

ansible-playbook -i ../ansible/hosts ../ansible/main.yaml


echo "##########################"
echo "   testing application "
echo "##########################"

echo "execute:"
echo "curl 192.168.33.11/cgi-bin/app.py"
echo ""
echo "results:"
curl 192.168.33.11/cgi-bin/app.py
