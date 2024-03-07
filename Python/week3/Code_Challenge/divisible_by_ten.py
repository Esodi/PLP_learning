#!/usr/bin/python3
"""
    Create a function called divisible_by_ten() that has one parameter named num.

The function should return True if num is divisible by 10, and False otherwise. 

"""

def divisible_by_ten(num):
    if num % 10 == 0:
        return True
    else:
        return False

n = int(input("Enter a number to check if it is divisible by 10: "))
check = divisible_by_ten(n)
print(check)
