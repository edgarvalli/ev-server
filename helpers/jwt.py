import jwt
from datetime import datetime,timedelta

secret = "W8kKqQHZLjbXx7kAHNPCxj"

def encode(payload = {}):
    payload["iat"] = datetime.utcnow()
    payload["exp"] = datetime.utcnow() + timedelta(minutes=payload["exp"])
    token = jwt.encode(payload,secret, algorithm="HS256")
    return token


def decode(token=""):
    try:
        payload =  jwt.decode(token, secret, algorithms=["HS256"])
        return {
            "error": False,
            "data": payload
        }
    
    except jwt.ExpiredSignatureError as error:
        print(error)
        return {
            "error": True,
            "expired": True,
            "message": "Token expiro"
        }
    
    except (jwt.InvalidTokenError, jwt.ExpiredSignatureError, jwt.DecodeError) as exc:
        return {
            "error": True,
            "message": str(exc)
        }