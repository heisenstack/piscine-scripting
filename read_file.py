import re

def tokenize(sentence):
    cleaned = re.sub(r'[^a-zA-Z0-9\s]', ' ', sentence)
    words = cleaned.lower().split()
    return words