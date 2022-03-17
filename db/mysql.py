import mysql.connector
import re

mysql_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'p4ssw0rd',
    'database': 'tlacrmdb'
}

odataConversion = {
    'eq': '=',
    'gt': '>=',
    'ge': '>',
    'le': '<',
    'lt': '<=',
    'ne': '!=',
    'like': 'like',
}


def formatOdataParams(filters=""):

    # Los datos los se envian separandolos por and or 'or'
    # Aqui se dividen y se convierte el array

    join = " and "

    if join in filters:
        filters = filters.split("and")
    else:
        filters = filters.split("or")
        join = " or "

    new_filters = []
    # Se empieza a recorrer los filtros para convertirlos y retornarlos
    for f in filters:
        # se elimina si tiene espacios
        f = f.strip()

        # Se divide por espacios y si tiene mas de uno lo elimina para que queden solo
        # 3 parametros con valores

        f = f.split(" ")
        f = [item for item in f if item != ""]

        # Se revisa si es un operador eq y no es numero
        param1 = f[0]
        param2 = f[1]
        param3 = " ".join(f[2:])

        if param2 == 'eq' and param3.isnumeric() == False:
            param3_reg = re.search(r"'(.*?)'", param3)
            
            param3_reg = param3_reg.group(1)
            print(param3_reg)
            if param3_reg.startswith('*') or param3_reg.endswith('*'):
                param3_reg = param3_reg.replace('*', '%')
                new_filters.append(f"{param1} like '{param3_reg}'")
            
            else:
                new_filters.append(f"{param1} {odataConversion[param2]} {param3}")        

        else:
            new_filters.append(f"{param1} {odataConversion[param2]} {param3}")

    return join.join(new_filters)


def connect():
    try:
        cxn = mysql.connector.connect(
            host=mysql_config.get('host'),
            user=mysql_config.get('user'),
            password=mysql_config.get('password'),
            database=mysql_config.get('database')
        )
        return {
            'error': False,
            'cxn': cxn
        }
    except mysql.connector.Error as e:
        return {
            'error': True,
            'sqlCode': e.errno,
            'sqlMessage': e.msg
        }


def fetchall(query=""):
    try:
        cxn = connect()

        if cxn.get('error'):
            return cxn

        cxn = cxn.get('cxn')

        cursor = cxn.cursor(dictionary=True)
        cursor.execute(query)
        items = cursor.fetchall()

        return {
            'error': False,
            'data': items
        }

    except mysql.connector.Error as e:
        return {
            'error': True,
            'sqlCode': e.errno,
            'sqlMessage': e.msg
        }

def fetchone(query=""):
    try:
        cxn = connect()

        if cxn.get('error'):
            return cxn

        cxn = cxn.get('cxn')

        cursor = cxn.cursor(dictionary=True)
        cursor.execute(query)
        item = cursor.fetchone()

        return {
            'error': False,
            'data': item
        }

    except mysql.connector.Error as e:
        return {
            'error': True,
            'sqlCode': e.errno,
            'sqlMessage': e.msg
        }

def insert(model="", data={}):
    try:
        cxn = connect()

        if cxn.get('error'):
            return cxn

        cxn = cxn.get('cxn')

        for k in data:
            print(k)

        return {
            'error': False,
            'data': "item"
        }

    except mysql.connector.Error as e:
        return {
            'error': True,
            'sqlCode': e.errno,
            'sqlMessage': e.msg
        }