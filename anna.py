#
# Common Python functions
#
# Anna Vahtera
#

from os import system, name

def clearScreen(): # Compatibility, Deprecated.
    '''Clear Screen'''
    system('cls' if name == 'nt' else 'clear') # Clear Screen depending on OS

def clear_screen():
    '''Clear Screen'''
    system('cls' if name == 'nt' else 'clear') # Clear Screen depending on OS

def openFile(fName): # Compatibility, Deprecated.
    ''Open file in UTF-8'''
    tList = []
    with open(fName, "r", encoding="utf-8") as f: # Open the File and Read the Lines into an Array
        tList = [line.strip() for line in f]
    return tList

def open_file(fName):
    '''Open file in UTF-8 encoding'''
    tList = []
    with open(fName, "r", encoding="utf-8") as f: # Open the File and Read the Lines into an Array
        tList = [line.strip() for line in f]
    return tList
