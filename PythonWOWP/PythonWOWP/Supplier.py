"""
Module defining variables that represent data held in fields in MySQL database.
"""

import mysql.connector
from prettytable import from_db_cursor
from prettytable import PrettyTable
from connection import DBHelper
from modfuncts import formatList
from modfuncts import formatPhone
from modfuncts import formatDatetime
import datetime
import os
from termcolor import colored, cprint 
from colorama import Fore, Back, Style 
from tabulate import tabulate
import contact



def sup(id):
    """
    Query to pull data from MySQL supplier table and assign it to Python 
    variables.
    """

    #  define global variables
    global supplierName 
    global supplierId
    global supplierActive 
    global supplierFirstContact 
    global supplierSecondContact 
    global supplierPhone1desc
    global supplierPhone1
    global supplierPhone2desc
    global supplierPhone2 
    global supplierPhone3desc 
    global supplierPhone3 
    global supplierFax
    global supplierAddress1desc 
    global supplierAddress1line1 
    global supplierAddress1line2 
    global supplierAddress1postal 
    global supplierAddress2desc 
    global supplierAddress2line1 
    global supplierAddress2line2 
    global supplierAddress2postal 
    global supplierNotes
    global supplierLastModified
    global supplierAddress1city
    global supplierAddress2city
    global supplierAddress1state
    global supplierAddress2state
    global supplierAddress1country
    global supplierAddress2country
   

    #  fields to query
    field =    "supplier_name, " + \
                "supplier_id, " + \
                "supplier_active, " + \
                "supplier_firstContact, " + \
                "supplier_secondContact, " + \
                "supplier_phone1desc, " + \
                "supplier_phone1, " + \
                "supplier_phone2desc, " + \
                "supplier_phone2, " + \
                "supplier_phone3desc, " + \
                "supplier_phone3, " + \
                "supplier_fax, " + \
                "supplier_address1desc, " + \
                "supplier_address1line1, " + \
                "supplier_address1line2, " + \
                "supplier_address1postal, " + \
                "supplier_address2desc, " + \
                "supplier_address2line1, " + \
                "supplier_address2line2, " + \
                "supplier_address2postal, " + \
                "supplier_notes, " + \
                "last_modified"
    #  table to query
    table = "supplier"
    #  optional argument (WHERE; matches supplierId)
    opt = "WHERE supplier_id = " + str(id) + " "
    #  execute query
    query = DBHelper.select(field, table, opt)
    #  assign variables to list values returned from query
    supplierName = [lis[0] for lis in query]
    supplierName = formatList(supplierName)
    supplierId = [lis[1] for lis in query]
    supplierId = formatList(supplierId)
    supplierActive = [lis[2] for lis in query]
    supplierActive = formatList(supplierActive)
    supplierFirstContact = [lis[3] for lis in query]
    supplierFirstContact = formatList(supplierFirstContact)
    supplierSecondContact = [lis[4] for lis in query]
    supplierSecondContact = formatList(supplierSecondContact)
    supplierPhone1desc = [lis[5] for lis in query]
    supplierPhone1desc = formatList(supplierPhone1desc)
    supplierPhone1 = [lis[6] for lis in query]
    supplierPhone1 = formatList(supplierPhone1)
    supplierPhone1 = formatPhone(supplierPhone1)
    supplierPhone2desc = [lis[7] for lis in query]
    supplierPhone2desc = formatList(supplierPhone2desc)
    supplierPhone2 = [lis[8] for lis in query]
    supplierPhone2 = formatList(supplierPhone2)
    supplierPhone2 = formatPhone(supplierPhone2)
    supplierPhone3desc = [lis[9] for lis in query]
    supplierPhone3desc = formatList(supplierPhone3desc)
    supplierPhone3 = [lis[10] for lis in query]
    supplierPhone3 = formatList(supplierPhone3)
    supplierPhone3 = formatPhone(supplierPhone3)
    supplierFax = [lis[11] for lis in query]
    supplierFax = formatList(supplierFax)
    supplierFax = formatPhone(supplierFax)
    supplierAddress1desc = [lis[12] for lis in query]
    supplierAddress1desc = formatList(supplierAddress1desc)
    supplierAddress1line1 = [lis[13] for lis in query]
    supplierAddress1line1 = formatList(supplierAddress1line1)
    supplierAddress1line2 = [lis[14] for lis in query]
    supplierAddress1line2 = formatList(supplierAddress1line2)
    supplierAddress1postal = [lis[15] for lis in query]
    supplierAddress1postal = formatList(supplierAddress1postal)
    supplierAddress2desc = [lis[16] for lis in query]
    supplierAddress2desc = formatList(supplierAddress2desc)
    supplierAddress2line1 = [lis[17] for lis in query]
    supplierAddress2line1 = formatList(supplierAddress2line1)
    supplierAddress2line2 = [lis[18] for lis in query]
    supplierAddress2line2 = formatList(supplierAddress2line2)
    supplierAddress2postal = [lis[19] for lis in query]
    supplierAddress2postal = formatList(supplierAddress2postal)
    supplierNotes = [lis[20] for lis in query]
    supplierNotes = formatList(supplierNotes)
    supplierLastModified = [lis[21] for lis in query]
    supplierLastModified = formatDatetime(supplierLastModified)
    supplierAddress1city = getCity(supplierAddress1postal)
    supplierAddress2city = getCity(supplierAddress2postal)
    supplierAddress1state = getState(supplierAddress1postal)
    supplierAddress2state = getState(supplierAddress2postal)
    supplierAddress1country = getCountry(supplierAddress1postal)
    supplierAddress2country = getCountry(supplierAddress2postal)

def supEditName(id):
    print("Current Name: " + supplierName)
    newName = input("Please enter a new name: ")
    field = "supplier_name"
    table = "supplier"
    newValue = "'" + newName + "'"
    opt = "WHERE supplier_id = " + str(id) + " "
    query = DBHelper.update(field, table, newValue, opt)






def supEdit(id):
    os.system('cls')
    print("Edit Options")
    print("------------")
    print("1\tSupplier Name")
    print("2\tSupplier Active")
    print("3\tSupplier Primary Contact")
    print("4\tSupplier Alternate Contact")
    print("5\tSupplier Phone 1 Desc.")
    print('')
    option = input("Please make a selection: ")

    if option == '1':
        supEditName(id)




def getValue(id, value):
    """
    Method to return specified variable from query.
    id = supplierId
    value = Python variable to return
    """
    sup(id)
    value = eval(value)
    return value



def getCity(geoId):
    
    global city

    field = "geo_city"
    table = "geo"
    opt = "WHERE geo_postal = " + str(geoId) + " "
    query = DBHelper.select(field, table, opt)
    city = [lis[0] for lis in query]
    city = str(city)
    city = formatList(city)
    return city

def getState(geoId):
    
    global state

    field = "geo_state"
    table = "geo"
    opt = "WHERE geo_postal = " + str(geoId) + " "
    query = DBHelper.select(field, table, opt)
    state = [lis[0] for lis in query]
    state = str(state)
    state = formatList(state)
    return state

def getCountry(geoId):
    
    global country

    field = "geo_country"
    table = "geo"
    opt = "WHERE geo_postal = " + str(geoId) + " "
    query = DBHelper.select(field, table, opt)
    country = [lis[0] for lis in query]
    country = str(country)
    country = formatList(country)
    return country

def supPrint(id):
    sup(id)
    
    #print1 (req sup(id))
    #  ==================
    #print("\n\n")
    #print("Supplier: " + supplierName)
    #print("Address 1 Desc:" + supplierAddress1desc)
    #print(supplierAddress1line1)
    #print(supplierAddress1line2)
    #print(supplierAddress1postal)



    #print2
    # ======
    #x = PrettyTable()
    #connection = DBHelper.mydb
    #cursor = connection.cursor()
    #cursor.execute("SELECT loadArchiving_parentCoId, loadArchiving_loadNo, \
    #               loadArchiving_deliveryDate, loadArchiving_grossWeight, \
    #               loadArchiving_tareWeight, loadArchiving_moisture \
    #               FROM loadArchiving WHERE loadArchiving_grossWeight BETWEEN \
    #               90000 AND 100000")
    #               
    #mytable = from_db_cursor(cursor)
    #print(mytable)

    
    
    #print3 (req sup(id))
    #  ==================
    now = datetime.datetime.now()
    os.system('cls')
    print (Fore.GREEN + Style.BRIGHT + now.strftime("%Y-%m-%d %H:%M:%S").rjust(80))
    print(Style.RESET_ALL)

    if supplierActive == "1":
        act = "YES"
    else:
        act = "NO"
    
    print("SUPPLIER NAME:\t" + supplierName + "\t\tSUPPLIER ACTIVE: " + act)
    print("SUPPLIER ID:\t" + supplierId)
    
    #print("\n\nADDRESS 1: " + supplierAddress1desc + "\t\tADDRESS2: " + supplierAddress2desc)
    #print("\n")
    #
    #
    #table = [["ADDRESS 1: " + supplierAddress1desc, "ADDRESS 2: " + supplierAddress2desc], [supplierAddress1line1, supplierAddress2line1], [supplierAddress1line2, supplierAddress2line2], [supplierAddress1postal, supplierAddress2postal]]
    #print(tabulate(table))
    #
    ##print(supplierAddress1line1 + "\t\t" + supplierAddress2line1)
    ##print(supplierAddress1line2 + "\t\t" + supplierAddress2line2)
    ##print(supplierAddress1postal + "\t\t" + supplierAddress2postal)

    #print4
    #  ======

    addressTable = PrettyTable(right_padding_width=10)

    #x.add_row(["ADDRESS 1: " + supplierAddress1desc, "ADDRESS 2: " + supplierAddress2desc])
    #x.add_row([supplierAddress1line1, supplierAddress2line1])
    #x.add_row([supplierAddress1line2, supplierAddress2line2])
    #x.add_row([supplierAddress1postal, supplierAddress2postal])
    
    column_names= ["ADDRESS 1: " + supplierAddress1desc, "ADDRESS 2: " + supplierAddress2desc, "PHONE/FAX"]
    addressTable.add_column(column_names[0], [supplierAddress1line1, supplierAddress1line2, supplierAddress1city, supplierAddress1state, supplierAddress1postal, supplierAddress1country])
    addressTable.add_column(column_names[1], [supplierAddress2line1, supplierAddress2line2, supplierAddress2city, supplierAddress2state, supplierAddress2postal, supplierAddress2country])
    addressTable.add_column(column_names[2], [supplierPhone1desc, supplierPhone1, supplierPhone2desc, supplierPhone2, "FAX", supplierFax])
    addressTable.align = "l"
    print(addressTable)
  
    contactTable = PrettyTable(right_padding_width=25)
    contactTable.border = False
    contactTable.header = False
    contactTable.add_row(["PRIMARY CONTACT: " + contact.getContactName(supplierFirstContact, "contactLast, contactFirst") + "(" + supplierFirstContact + ")", "PRIMARY PHONE:\t" + contact.getContactPhone(supplierFirstContact, "contact_phone1")])
    contactTable.add_row(["EMAIL: " + contact.getContactEmail (supplierFirstContact), "ALTERNATE PHONE:\t" + contact.getContactPhone(supplierFirstContact, "contact_phone2")])
    contactTable.add_row(["",""])
    if supplierSecondContact != "NONE":
        contactTable.add_row(["ALTERNATE CONTACT: " + contact.getContactName(supplierSecondContact, "contactLast, contactFirst") + "(" + supplierSecondContact + ")", "PRIMARY PHONE:\t" + contact.getContactPhone(supplierSecondContact, "contact_phone1")])
        contactTable.add_row(["EMAIL: " + contact.getContactEmail (supplierSecondContact), "ALTERNATE PHONE:\t" + contact.getContactPhone(supplierSecondContact, "contact_phone2")])
    contactTable.align = "l"
    print(contactTable)

 
    print ("\n\nLAST MODIFIED: "+ Fore.GREEN + Style.BRIGHT + supplierLastModified.strftime("%Y-%m-%d %H:%M:%S"))
    print(Style.RESET_ALL)

    print("\n\nOPTIONS:")
    print(Back.WHITE + Fore.BLACK + "1" + Back.BLACK + Fore.WHITE + "  RETURN\t" + Back.WHITE + Fore.BLACK + "2" + Back.BLACK + Fore.WHITE + "  EDIT\t" + Back.WHITE + Fore.BLACK + "3" + Back.BLACK + Fore.WHITE + "  VIEW LAST FIVE DEL.")
    print(Style.RESET_ALL)
    option = input("PLEASE MAKE A SELECTION: ")

    if option == '1':
        os.system('cls')
        #print("option1")
        if __name__ == "__main__":
            # execute only if run as a script
            main()
    elif option == '2':
        supEdit(id)

