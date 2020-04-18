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

def getContactName(conId, value):
   
    global contactLast
    global contactFirst
    
    field = "contact_last, contact_first"
    table = "contact"
    opt = "WHERE contact_id = " + str(conId) + " "
    query = DBHelper.select(field, table, opt)
    contactLast = [lis[0] for lis in query]
    contactFirst = [lis[1] for lis in query]
    value = str(contactLast) + ", " + str(contactFirst)
    value = formatList(value)
    return value

def getContactPhone(conId, value):
    field = value
    table = "contact"
    opt = "WHERE contact_id = " + str(conId) + " "
    query = DBHelper.select(field, table, opt)
    phone = [lis[0] for lis in query]
    phone = formatList(phone)
    phone = formatPhone(phone)
    return phone

def getContactEmail(conId):
    field = "contact_email"
    table = "contact"
    opt = "WHERE contact_id = " + str(conId) + " "
    query = DBHelper.select(field, table, opt)
    email = [lis[0] for lis in query]
    email = formatList(email)
    return email