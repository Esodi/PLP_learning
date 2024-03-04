#!/usr/bin/python3
"""
    program that uses a dictionary to store information about a person, such as their name, age, and favorite color. Ask the user for input and store the information in the dictionary. Then, print the dictionary to the console.

"""

person = {}

person['name'] = input("Enter your name: ")
person['age'] = input("Enter your age: ")
person['color'] = input("Enter your favorite color: ")

print(person)
