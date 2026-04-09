import re
from collections import Counter

def tokenizer_counter(string):
    cleaned = re.sub(r'[^a-zA-Z0-9\s]', '', string).lower()
    words = cleaned.split()
    count = Counter(words)
    return dict(sorted(count.items()))