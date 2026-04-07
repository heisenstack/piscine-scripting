import datetime as dt

def to_do(tasks):
    with open("output.txt", "w") as f:
        for date, task in tasks:
            line = date.strftime("%A %d %B %Y") + ": " + task + "\n"
            f.write(line)