import json

def merge_two(first_dict):
    new_dict = {}
    while True:
        print("Add a new entry:")
        key = input("key: ")
        if key == "exit":
            break
        value = int(input("value: "))
        new_dict[key] = value
    merged = {**first_dict, **new_dict}
    return json.dumps(merged)