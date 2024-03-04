#!/usr/bin/python3
"""
    Program that accepts user input to create a list of integers. Then, compute the sum of all the integers in the list 

"""

nums = input("Enter sequence of numbers separated by whitespace: ").split(' ')

s = 0
for i in nums:
    s = s + int(i)

nadd = ' + '.join(nums)
print(nadd, end='')
print(f" = {s}")
