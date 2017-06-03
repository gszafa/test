#!/usr/bin/python
import cgitb
import MySQLdb
from prettytable import PrettyTable

# setup
cgitb.enable()
print "HTTP/1.0 200 OK"
print "Content-type: text/html\n\n"

# Open database connection
db = MySQLdb.connect("localhost","python","CHANGEME","employees")

# prepare a cursor object using cursor() method
cursor = db.cursor()


# execute SQL query using execute() method.
cursor.execute("select * from employees where gender='M' and birth_date='1965-02-01' and hire_date > '1990-01-01' order by first_name,last_name;")


# printing data
columns = [i[0] for i in cursor.description]
t=PrettyTable(columns)
rows = cursor.fetchall()

for row in rows:
    t.add_row(row)
print t
# disconnect from server
db.close()

