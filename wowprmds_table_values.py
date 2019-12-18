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
#  geo table values
#  =============================================================================

def geo():
    print('geo')
    print('----')

    mycursor.execute("SELECT geo_postal, geo_city, geo_state FROM geo")

    x = from_db_cursor(mycursor)
    x.align["geo_postal"] = "l"
    x.align["geo_city"] = "l"
    x.align["geo_state"] = "l"
    print(x)


#  =============================================================================
#  contact table values
#  =============================================================================

def contact():
    print('')
    print('contact')
    print('--------')

    mycursor.execute("SELECT contact_id, contact_last, contact_first FROM contact")

    x = from_db_cursor(mycursor)
    x.align["contact_id"] = "l"
    x.align["contact_last"] = "l"
    x.align["contact_first"] = "l"
    print(x)

#  =============================================================================
#  parentCo table values
#  =============================================================================

def parentCo():
    print('')
    print('parentCo')
    print('---------')

    mycursor.execute("SELECT parentCo_id, parentCo_name FROM parentCo")

    x = from_db_cursor(mycursor)
    x.align["parentCo_id"] = "l"
    x.align["ParentCo_name"] = "l"
    print(x)

#  =============================================================================
#  locationSub table values
#  =============================================================================

def locationSub():
    print('')
    print('locationSub')
    print('-----------')

    mycursor.execute("SELECT locationSub_id, locationSub_name, locationSub_symbol,"
                     "locationSub_parentCo FROM locationSub")

    x = from_db_cursor(mycursor)
    x.align["locationSub_id"] = "l"
    x.align["locationSub_name"] = "l"
    x.align["locationSub_symbol"] = "l"
    x.align["locationSub_parentCo"] = "l"
    print(x)





#  =============================================================================
#  menuOptions
#  =============================================================================

print('')
print('Please Select Table Values to Print')
print('------------------------------------')
print('1\tgeo')
print('2\tcontact')
print('3\tparentCo')
print('4\tlocationSub')
print('5\tsupplier')
print('6\tsupplierSub')
print('7\tfreightComp')
print('8\tremitFreq')
print('9\tmaterialSpecies')
print('10\tmaterialType')
print('11\tmaterial')
print('12\tunit')
print('13\tcovenant')
print('14\tloadEntryTemp')
print('15\tloadArchiving')
print('')
menuOption = input("selection: ")
print('')

if menuOption == '1':
    geo()
elif menuOption == '2':
    contact()
elif menuOption == '3':
    parentCo()
elif menuOption == '4':
    locationSub()
else:
    print('error')



