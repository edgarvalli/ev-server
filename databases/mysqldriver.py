from os import environ
from dotenv import load_dotenv
import mysql.connector

load_dotenv()

_mysqldriver = mysql.connector.connect(
    host=environ.get('EV_DB_HOST', 'localhost'),
    user=environ.get("EV_DB_USER", ""),
    password=environ.get("EV_DB_PASS","")
)


def fetchall(query):
    try:
        cursor = _mysqldriver.cursor(dictionary=True)
        cursor.execute(query)
        rows = cursor.fetchall()
        cursor.close()

        return {
            "error": False,
            "data": rows,
            "message": "success",
            "sqlerrorcode": 0
        }
    
    except mysql.connector.Error as error:
        return {
            "error": True,
            "data": [],
            "message": error.msg,
            "sqlerrorcode": error.errno
        }