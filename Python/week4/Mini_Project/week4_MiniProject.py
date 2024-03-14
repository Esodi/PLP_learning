#!/usr/bin/python3
'''

    In this project, you are tasked to create a program that automates searching for a word definition in a dictionary

'''

import difflib
import json

def matcher(key, cloned):
    newkey = key
    maxrat = 0
    for i in cloned:
        obj = difflib.SequenceMatcher(None, str(key), str(i))
        rat = obj.ratio()
        if rat == 1.0:
            return newkey
        else:
            if rat > maxrat:
                if rat > 0.75:
                    maxrat = rat
                    newkey = i
    ans = input('\nDo you mean \'{}\'?\nEnter y for Yes and n for No: '.format(newkey))
    ans = ans.lower()
    if (ans == 'y'):
        return newkey
    else:
        return key

def processor(key):
    with open('dictionary-data/data.json', 'r') as f:
        data = json.load(f)
        cloned = {}
        for k, v in data.items():
            cloned[k.lower()] = v
        nkey = key.lower()
        key = matcher(nkey, cloned)
        if key in cloned:
            return cloned[key]
        else:
            return "Keyword Not Found"

print('\t\t\t======\tSEARCH\t======\t\t\t\n')
print('Press Ctrl+D or Enter 0 to EXIT')
print()
try:
    while True:
        keyword = input('Enter the keyword: ')
        if keyword == '0':
            print('Welcome Again')
            break
        result = processor(keyword)
        print()
        print(result)
        print()
except EOFError:
    print('\nWelcome Again')
