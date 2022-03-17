import mysql.connector
import json
mysql_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'p4ssw0rd',
    'database': 'tlacrmdb'
}

try:
    cxn = mysql.connector.connect(
        host=mysql_config.get('host'),
        user=mysql_config.get('user'),
        password=mysql_config.get('password'),
        database=mysql_config.get('database')
    )

    cursor = cxn.cursor(dictionary=True)

    items = open("C:\\dev\\ev-server\\backend\\clients_test.json", 'r')
    items = json.load(items)

    for item in items:
        query = "INSERT INTO clients (name,phone,email,address,town,city) VALUES"
        query += f" ('{item['name']}','{item['phone']}','{item['email']}','{item['address']}','{item['town']}','{item['city']}')"
        cursor.execute(query)
        print(item['name'])
    
    cxn.commit()

    cxn.close()

except mysql.connector.Error as e:
    print({
        'error': True,
        'sqlCode': e.errno,
        'sqlMessage': e.msg
    })
