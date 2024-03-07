#!/usr/bin/python3
"""
    Create a function named large_power() that takes two parameters named base and exponent.

"""

def large_power(base, exp):
    num = base ** exp;
    if num > 5000:
        return True
    return False

inp = input("Enter base number then exponent: ").split(' ')
print(large_power(int(inp[0]), int(inp[1])))
