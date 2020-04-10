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


id = input("enter supplier id: ")

value = "supplierName, supplierId"

print(supplier.getValue(id, value))
