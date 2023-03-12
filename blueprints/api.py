from flask import Blueprint, request
from databases import mysqldriver as mysql

api = Blueprint("api",__name__)

@api.route("/")
def api_index():
    return "EV API Running"

@api.route("/<collection>/<model>",methods = ["GET","POST","PUT","DELETE"])
def get_items(collection,model):

    if request.method == "GET":
        return get_query(collection, model)

    return "This is your model " + model



def get_query(collection, model):

    select = request.args.get("$select",None)

    if select is None:
        select = "*"

    query = f"SELECT {select} FROM {collection}.{model}"

    where:str = request.args.get("$where",None)

    if where is not None:
        where = where.replace('*',"%")
        query += f" WHERE {where}"

    print(query)
    return mysql.fetchall(query)

def post_query(query):
    return {
        "error": False,
        "data": [],
        "message": ""
    }
