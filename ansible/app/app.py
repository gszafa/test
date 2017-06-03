#!/usr/bin/python

import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost","python","CHANGEME","employees")

# prepare a cursor object using cursor() method
cursor = db.cursor()


# execute SQL query using execute() method.
cursor.execute("select * from employees where gender='M' and birth_date='1965-02-01' and hire_date > '1990-01-01' order by first_name,last_name;")

rows = cursor.fetchall()
for row in rows:
    for col in row:
        print "%s," % col ,
    print "\n"


# disconnect from server
db.close()

