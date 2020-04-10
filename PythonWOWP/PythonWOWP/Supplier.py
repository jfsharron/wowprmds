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

def getValue(id, value):
    """
    Method to return specified variable from query.
    id = supplierId
    value = Python variable to return
    """
    sup(id)
    value = eval(value)
    return value





