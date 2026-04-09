import json

def get_recipes(file_name):
    with open(file_name, 'r') as f:
        return json.load(f)