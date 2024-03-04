#!/usr/bin/python3
"""
    week two assignment

"""

my_list = []
print(my_list)

my_list.append(10)
print(my_list)
my_list.append(20)
print(my_list)
my_list.append(30)
print(my_list)
my_list.append(40)
print(my_list)

my_list.insert(1, 15)
print(f"After inserting 15 at 2nd position: {my_list}")

lst = [50, 60, 70]
print(f"Another list: {lst}")

extended_list = my_list.extend(lst)
print(f"After list extension: {my_list}")

del my_list[-1]
print(f"After last element deleted: {my_list}")

print(f"index of value 30: {my_list.index(30)}")
