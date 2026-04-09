import sys

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Error: wrong number of arguments")
        sys.exit(1)

    candidates = []
    num = int(sys.argv[1])

    for i in range(num):
        print("Add a new candidate:")
        name = input("name: ")
        age = int(input("age: "))
        candidates.append({"name": name, "age": age})

    for candidate in candidates:
        name = candidate["name"]
        age = candidate["age"]
        if age < 18:
            print(f"{name} is not eligible (underaged)")
        elif age > 60:
            print(f"{name} is not eligible (over the legal age)")
        else:
            print(f"{name} is eligible")