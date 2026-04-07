def clean_list(lst):
    if len(lst) == 0:
        return lst
    for i in range(len(lst)):
        lst[i] = lst[i].strip()
    if 'milk' not in lst:
        lst.append('milk')
    result = []
    for i, item in enumerate(lst):
        cleaned = str(i + 1) + "/ " + item.strip().capitalize()
        result.append(cleaned)
    return result