import mysql.connector
from prettytable import from_db_cursor
from prettytable import PrettyTable

#  =============================================================================
mydb = mysql.connector.connect(
    host = '192.168.2.107',
    user = 'jfsharron',
    passwd = 'marie151414',
    database = 'wowprmds'
)
mycursor = mydb.cursor()
#  =============================================================================

#  =============================================================================
#  covenant table values
#  =============================================================================

def covenant():
    print('')
    print('covenant')
    print('---------')

    mycursor.execute("SELECT * FROM covenant")

    x = from_db_cursor(mycursor)
    x.align["covenant_id"] = "l"
    x.align["covenant_covenantNo"] = "l"
    x.align["covenant_supplierSub"] = "l"
    print(x)

#  =============================================================================

covenant()