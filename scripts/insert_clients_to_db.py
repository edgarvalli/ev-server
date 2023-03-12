from os import environ
from dotenv import load_dotenv
import mysql.connector
import json

load_dotenv()

mysqldriver = mysql.connector.connect(
    host=environ.get('EV_DB_HOST', 'localhost'),
    user=environ.get("EV_DB_USER", ""),
    password=environ.get("EV_DB_PASS", "")
)

db = "evdb"

jsonfile = open("clients.json","r", encoding='utf8')

jsonobject = json.loads(jsonfile.read())

c = mysqldriver.cursor()

for row in jsonobject:
    keys = list(row.keys())
    values = ""

    for k in keys:
        values += f"'{row[k]}',"


    values = values[:-1]

    keys = ",".join(keys)

    query = f"insert into {db}.clients ({keys}) values ({values})"
    c.execute(query)
    print(f"{row['fullname']} creado con id {c.lastrowid}")


mysqldriver.commit()
c.close()
mysqldriver.close()
    