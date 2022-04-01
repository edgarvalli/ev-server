from helpers import jwt
from flask import Flask, request
from api import api
from db import mysql

app = Flask(__name__, static_folder='static')

app.config.update(
    SESSION_COOKIE_SECURE=True,
    SESSION_COOKIE_HTTPONLY=True,
    SESSION_COOKIE_SAMESITE='Lax'
)

app.register_blueprint(api)


@app.route('/')
def index():
    return 'Python Server Running'


@app.route('/singin', methods=['POST'])
def singin():
    data = request.get_json()
    email = data.get('email', 'admin@dominio.com')
    password = data.get('password', 'none')

    query = f"SELECT email,name,is_admin FROM users WHERE email='{email}' and password=SHA1('{password}')"
    payload = mysql.fetchone(query)
    if payload.get('data', None) is None:
        r = app.make_response({
            'error': True,
            'message': 'Usuario o Contraseña incorrectos'
        })
        r.set_cookie('isAuth', 'off')
        return r

    payload['exp'] = 15

    token = jwt.encode(payload)

    r = app.make_response({'error': False, 'data': payload})
    r.set_cookie('token', token, httponly=True, secure=True)
    r.set_cookie('isAuth', 'on')
    print(request.cookies)
    return r


@app.route('/logout')
def logout():
    if request.cookies.get('token'):
        r = app.make_response({
            "error": False,
            "message": "Sessión Terminada"
        })

        r.delete_cookie("token")
        r.delete_cookie("isAuth")

        return r

    return {
        "error": True,
        "message": "No tiene sessión iniciada"
    }


app.run(host='0.0.0.0', port=5000, debug=True)
