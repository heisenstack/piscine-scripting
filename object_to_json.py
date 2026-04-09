import json

class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(data):
    user = User()
    if isinstance(data, str):
        data = json.loads(data)
    if 'username' in data and 'email' in data:
        user.username = data['username']
        user.email = data['email']
        return user
    return User()

def user_to_json(user):
    return json.dumps(user.__dict__)