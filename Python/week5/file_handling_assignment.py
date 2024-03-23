#!/usr/bin/python3
"""
    Tasks:
    File Creation
    File Reading and Display
    File Appending
    Error Handling

"""


print('<======  FILE HANDLING  ======>')
print()
print('1. File Creation')
print('2. File Reading and Display')
print('3. File Appending')
print('4. Error Handling')
print()

choice = input('Enter your choice: ')

if choice == '1':
    #File Creation
    with open('my_file.txt', 'w') as file:
        file.writelines('Line 1 printed\nLine 2 printed\nLine 3 printed\n')

elif choice == '2':
    #File Reading and Display
    with open('my_file.txt', 'r') as file:
        data = file.read()
        print(data)

elif choice == '3':
    #File Appending
    with open("my_file.txt", 'a') as file:
        file.writelines('Appended Line 1\nAppended Line 2\nAppended Line 3\n')

elif choice == '4':
    #Error Handling
    try:
        with open("my_file.txt", 'r') as file:
            file.read()
    except FileNotFoundError:
        print('File not found')
    finally:
        print('operation complete')
