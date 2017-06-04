## What the project does ?

This project is PoC of ansible playbook for nginx + mysql deployment in vagrant environment with test data and simple web app made in python.

## What do you need?

Project was tested on Ubuntu 16.04, if you try to run it on different distro make sure that you have already installed:
* ansible (2.1.1.0)
* vagrant (1.9.2)
* virtualbox (5.0.40)
* curl (7.47.0)
* git (as first step in *how to start* will not work on any RHEL like OS ;) version: 2.7.4 )

Project should work fine also on newer versions of packages, however for above versions it was builded and fully tested.

## How to start ?
You can run this project in 4 steps:

1) Installing git to your machine

`sudo apt-get update; sudo apt-get install git -y `

2) Cloning this awsome project

`git clone https://github.com/gszafa/test.git `

3) Entering project directory

`cd test`

4) Starting deployment, remember about changing `<SomePassword>` which is needed for connecting app with DB to password of your choice

`./start_me.sh <SomePassword>`

## Output

When everything goes 'as planned' you should see something similar to this:
```
##########################
   testing application 
##########################
execute:
curl 192.168.33.11/cgi-bin/app.py

results:

+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
| 223595 | 1965-02-01 | Chiranjit  |   Dredge  |   M    | 1994-11-10 |
| 270794 | 1965-02-01 |   Dannz    |   Zhang   |   M    | 1990-10-24 |
| 284045 | 1965-02-01 |    Fun     |  Seiwald  |   M    | 1994-06-24 |
| 235729 | 1965-02-01 |    Henk    |   Anger   |   M    | 1993-01-19 |
| 74344  | 1965-02-01 |  Hiroyasu  |  Provine  |   M    | 1994-11-25 |
| 424584 | 1965-02-01 |   Kagan    |   Dredge  |   M    | 1994-02-26 |
| 80850  | 1965-02-01 |   Koldo    |    Luit   |   M    | 1993-11-19 |
| 433260 | 1965-02-01 |    Make    |  Olivero  |   M    | 1991-06-01 |
| 248758 | 1965-02-01 |  Snehasis  |  Muhlberg |   M    | 1991-07-16 |
+--------+------------+------------+-----------+--------+------------+
```

## What next?

At this point you have your VM setup with web server listening on `192.168.33.11:80` with application at `192.168.33.11/cgi-bin/app.py` , you can jump into it (either by ssh to `192.168.33.11` or by typing `vagrant ssh` inside of `test/vagrant` dir) and modify app/nginx/db as much as you like.

