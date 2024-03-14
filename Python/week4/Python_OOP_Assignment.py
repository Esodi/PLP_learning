#!/usr/bin/python3

class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

    def introduce(self):
        return f'My name is {self.name} and I am {self.gender} with {self.age} years old'

obj = Person('Method', 22, 'Male')
p = obj.introduce()
print(p)
