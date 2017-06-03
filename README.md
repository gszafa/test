## What the project does ?

This project is PoC of ansible playbook for nginx + mysql deployment in vagrant environment with test data and simple web app made in python.

## What do you need?

Project was tested on Ubuntu 16.04, if  you try to run it on different distro make sure that you have alread installed:
ansible
vagrant
virtualbox
curl
and probably git as first step will not work on any RHEL like OS ;)

## How to start ?
You can run this project in 4 steps:

1) Installing git to your machine

`sudo apt-get update; sudo apt-get install git -y `

2) Cloning this awsome project

`git clone https://github.com/gszafa/test.git `

3) Entering project directory
`cd test`

4) Starting deployment, remember about changing <SomePassword> which is needed for connecting app with DB

`./start_me.sh <SomePassword>`

## What next?

At this point you have your VM setup with web server listening on `192.168.33.11:80` , you can jump into it (either by ssh to `192.168.33.11` or by typing `vagrant ssh` inside of `test/vagrant` dir) and modify app/nginx/db as much as you like.
