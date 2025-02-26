#
# Common Python functions
#
# Anna Vahtera
#

from os import system, name

def clearScreen(): # Clear Screen
    system('cls' if name == 'nt' else 'clear') # Clear Screen depending on OS

def openFile(fName):
    tList = []
    with open(fName, "r", encoding="utf-8") as f: # Open the File and Read the Lines into an Array
        tList = [line.strip() for line in f]
    return tList
