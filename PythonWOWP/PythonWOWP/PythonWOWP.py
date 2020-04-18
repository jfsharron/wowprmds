import mysql.connector
from prettytable import from_db_cursor
from prettytable import PrettyTable
import supplier
from connection import DBHelper
from modfuncts import formatList
from modfuncts import formatPhone
from modfuncts import formatDatetime
import datetime
import supplier
import contact



def supplierq():
    id = input("enter supplier id: ")
    value = "supplierFirstContact"
    print(supplier.getValue(id, value))

def contactq():
    id = input("enter a contact id: ")
    value = "contact_last, contact_first"
    print(contact.getContactName(id, value))

def printSup():
    id = input("enter supplier id: ")
    supplier.supPrint(id)
    

goAgain = 1

while goAgain == 1:
    print('')
    print('Please Make a Selection')
    print('------------------------------------')
    print('1\tSupplier Query')
    print('2\tContact Query')
    print('3\tPrint Supplier Information')
    print('')
    print ('0\tExit')
    print('')
    menuOption = input("selection: ")
    print('')
    
    if menuOption == '1':
        supplierq()
    elif menuOption == '2':
        contactq()
    elif menuOption == '3':
        printSup()
    elif menuOption == '0':
        goAgain = 0
    