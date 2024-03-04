#!/usr/bin/python3

"""
        program that stores a list of words. Then, use list comprehension to create a new list that contains only the words that have an odd number of characters.

"""

lst = input("Enter sequence of words separated by space: ").split(' ')
lst2 = [i for i in lst if len(i) % 2 != 0]

print(lst2)
