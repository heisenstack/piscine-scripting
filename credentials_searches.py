import json
import os

def search_keys(obj, target_keys, result):
    if isinstance(obj, dict):
        for key, value in obj.items():
            if key in target_keys:
                result[key] = value
            else:
                search_keys(value, target_keys, result)
    elif isinstance(obj, list):
        for item in obj:
            search_keys(item, target_keys, result)

def credentials_search():
    if not os.path.exists('logs.json'):
        return

    try:
        with open('logs.json', 'r') as f:
            data = json.load(f)
    except (json.JSONDecodeError, ValueError):
        return

    result = {}
    search_keys(data, {'password', 'secret'}, result)

    if result:
        with open('credentials.json', 'w') as f:
            json.dump(result, f, indent=2)