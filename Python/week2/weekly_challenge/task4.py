#!/usr/bin/python3

"""
    program that accepts user input to create two sets of integers. Then, create a new set that contains only the elements that are common to both sets.

"""

nums1 = input("Enter integers separated by whitespace: ").split(' ')
st1 = set(nums1)
nums2 = input("Enter other integers separated by whitespace: ").split(' ')
st2 = set(nums2)

print(f" set1 = {st1}")
print(f" set2 = {st2}")
print(f" set1 & set2 = {st1 & st2}")
