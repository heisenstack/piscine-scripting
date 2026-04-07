def remember_the_apple(shopping_list):
    if len(shopping_list) == 0:
        return shopping_list
    if 'apple' not in shopping_list:
        shopping_list.append('apple')
    return shopping_list