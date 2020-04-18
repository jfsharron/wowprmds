"""
Module used to provide connection string and database queries to connect Python 
wowprmds project to MySQL database
"""

import mysql.connector

class DBHelper:
    """
    MySQL connection parameters and query functions.
    """

    global mydb
    #  connection parameters
    mydb = mysql.connector.connect(
        host = '192.168.2.107',
        user = 'jfsharron',
        passwd = 'marie151414',
        database = 'wowprmds'
    )
    global mycursor 
    mycursor = mydb.cursor()

    def select(field, table, opt = ''):
        """
        MySQL SELECT query:
        field = fields to associate with SELECT clause
        table = MySQL table to execute query on
        opt = optional arguments (WHERE); defaults to '' (none)
        """
        query = "SELECT " + field + " FROM " + table + " " + opt
        mycursor.execute(query)
        records = mycursor.fetchall()
        return records

    def update(field, table, newValue, opt = ''):
        query = "UPDATE " + table + " SET " + field + " = " + newValue + " " + opt
        mycursor.execute(query)
        mydb.commit()



