def clean_list(lst):
    if len(lst) == 0:
        return []
    for item in lst:
        item = item.strip()
    if 'milk' not in lst:
        lst.append('milk')
    result = []
    for i, item in enumerate(lst):
        cleaned = str(i + 1) + "/ " + item.strip().capitalize()
        result.append(cleaned)
    return result