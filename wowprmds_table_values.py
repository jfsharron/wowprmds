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
#  supplier table values
#  =============================================================================

def supplier():
    print('')
    print('supplier')
    print('--------')

    mycursor.execute("SELECT supplier_id, supplier_name FROM supplier")

    x = from_db_cursor(mycursor)
    x.align["supplier_id"] = "l"
    x.align["supplier_name"] = "l"
    print(x)

#  =============================================================================
#  supplierSub table values
#  =============================================================================

def supplierSub():
    print('')
    print('supplierSub')
    print('-----------')

    mycursor.execute("SELECT supplierSub.supplierSub_id, "
                     "supplierSub.supplierSub_name, supplierSub.supplierSub_parent, "
                     "supplier.supplier_name FROM supplierSub, supplier WHERE "
                     "supplierSub.supplierSub_parent = supplier.supplier_id")

    x = from_db_cursor(mycursor)
    x.align["supplierSub_id"] = "l"
    x.align["supplierSub_name"] = "l"
    x.align["supplierSub_parent"] = "l"
    x.align["supplier_name"] = "l"
    print(x)

#  =============================================================================
#  freightComp table values
#  =============================================================================

def freightComp():
    print('')
    print('freightComp')
    print('------------')

    mycursor.execute("SELECT freightComp_id, freightComp_name FROM freightComp")

    x = from_db_cursor(mycursor)
    x.align["freightComp_id"] = "l"
    x.align["freightComp_name"] = "l"
    print(x)

#  =============================================================================
#  remitFreq table values
#  =============================================================================

def remitFreq():
    print('')
    print('remitFreq')
    print('----------')

    mycursor.execute("SELECT remitFreq_id, remitFreq_desc FROM remitFreq")

    x = from_db_cursor(mycursor)
    x.align["remitFreq_id"] = "l"
    x.align["remitFreq_desc"] = "l"
    print(x)

#  =============================================================================
#  materialSpecies table values
#  =============================================================================

def materialSpecies():
    print('')
    print('materialSpecies')
    print('---------------')

    mycursor.execute("SELECT materialSpecies_id, materialSpecies_desc "
                     "FROM materialSpecies")

    x = from_db_cursor(mycursor)
    x.align["materialSpecies_id"] = "l"
    x.align["materialSpecies_desc"] = "l"
    print(x)
    
#  =============================================================================
#  materialTypes table values
#  =============================================================================

def materialType():
    print('')
    print('materialType')
    print('-------------')

    mycursor.execute("SELECT materialType_id, materialType_desc "
                     "FROM materialType")

    x = from_db_cursor(mycursor)
    x.align["materialType_id"] = "l"
    x.align["materialType_desc"] = "l"
    print(x)

#  =============================================================================
#  material table values
#  =============================================================================

def material():
    print('')
    print('material')
    print('---------')

    mycursor.execute("SELECT  material_id, materialSpecies_desc, materialType_desc "
                     "FROM material, materialSpecies, materialType "
                     "WHERE material.material_species = "
                     "materialSpecies.materialSpecies_id AND "
                     "material.material_type = materialType.materialType_id")

    x = from_db_cursor(mycursor)
    x.align["material_id"] = "l"
    x.align["materialSpecies_desc"] = "l"
    x.align["materialType_desc"] = "l"
    print(x)

#  =============================================================================
#  unit table values
#  =============================================================================

def unit():
    print('')
    print('unit')
    print('-----')

    mycursor.execute("SELECT unit_id, unit_desc "
                     "FROM unit")

    x = from_db_cursor(mycursor)
    x.align["unit_id"] = "l"
    x.align["unit_desc"] = "l"
    print(x)

#  =============================================================================
#  covenant table values
#  =============================================================================

def covenant():
    print('')
    print('covenant')
    print('---------')

    mycursor.execute("SELECT covenant.covenant_id, covenant.covenant_covenantNo, "
                     "covenant.covenant_supplierSub, supplierSub.supplierSub_name "
                     "FROM covenant, supplierSub WHERE "
                     "covenant.covenant_supplierSub = supplierSub.supplierSub_id")

    x = from_db_cursor(mycursor)
    x.align["covenant_id"] = "l"
    x.align["covenant_covenantNo"] = "l"
    x.align["covenant_supplierSub"] = "l"
    x.align["supplierSub_name"] = "l"
    print(x)

#  =============================================================================
#  loadEntryTemp table values
#  =============================================================================

def loadEntryTemp():
    print('')
    print('loadEntryTemp')
    print('--------------')

    mycursor.execute("SELECT loadEntry_id, loadEntry_covenant,"
                     "loadEntry_loadNo FROM loadEntryTemp")

    x = from_db_cursor(mycursor)
    x.align["loadEntry_id"] = "l"
    x.align["loadEntry_covenant"] = "l"
    x.align["loadEntry_loadNo"] = "1"
    print(x)

#  =============================================================================
#  loadArchiving table values
#  =============================================================================

def loadArchiving():
    print('')
    print('loadArchiving')
    print('-------------')

    mycursor.execute("SELECT loadArchiving_id, loadArchiving_covenantNo,"
                     "loadArchiving_loadNo FROM loadArchiving")

    x = from_db_cursor(mycursor)
    x.align["loadArchiving_id"] = "l"
    x.align["loadArchiving_covenantNo"] = "l"
    x.align["loadArchiving_loadNo"] = "l"

    print(x)

#  =============================================================================
#  complete table values
#  =============================================================================

def complete():
        contact()
        parentCo()
        locationSub()
        supplier()
        supplierSub()
        freightComp()
        remitFreq()
        materialSpecies()
        materialType()
        material()
        unit()
        covenant()
        loadEntryTemp()
        loadArchiving()

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
print('16\tall, except geo')
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
elif menuOption == '5':
    supplier()
elif menuOption == '6':
    supplierSub()
elif menuOption == '7':
    freightComp()
elif menuOption == '8':
    remitFreq()
elif menuOption == '9':
    materialSpecies()
elif menuOption == '10':
    materialType()
elif menuOption == '11':
    material()
elif menuOption == '12':
    unit()
elif menuOption == '13':
    covenant()
elif menuOption == '14':
    loadEntryTemp()
elif menuOption == '15':
    loadArchiving()
elif menuOption == '16':
    complete()
else:
    print('error')



