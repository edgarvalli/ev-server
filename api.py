from ast import arg
from functools import wraps
from flask import Blueprint, request
from db import mysql

api = Blueprint('api', __name__, url_prefix='/api')

def check_token(func):
    @wraps(func)
    def wrapper(*args, **kvargs):
        token = request.cookies.get('token', None)
        if token is None:
            return {
                "error": True,
                "message": "Usuario no autorizado"
            }
        return func(*args, **kvargs)
    
    return wrapper

@api.route('/get-cookie')
def get_cookie():
    token = request.cookies.get('token')
    return token


@api.route('/<model>')
@check_token
def api_index(model=''):
    select = request.args.get('$select', '*')
    orderby = request.args.get('$orderby', 'id desc')
    limit = request.args.get('$limit', 100)
    skip = request.args.get('$skip', 0)
    filters = request.args.get('$filter', None)

    query = f"SELECT {select} from {model}"

    if filters is not None:
        filter = mysql.formatOdataParams(filters=filters)

        query += f" WHERE {filter}"

    query += f" ORDER BY {orderby} LIMIT {limit} OFFSET {skip}"

    return mysql.fetchall(query=query)
