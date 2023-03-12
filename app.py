from flask import Flask

app = Flask(__name__)

# Blueprints imports
from blueprints.api import api


app.register_blueprint(api,url_prefix="/api")

app.run(host='0.0.0.0',port=5000, debug=True)