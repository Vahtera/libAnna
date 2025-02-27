#
# Common Python functions
#
# Anna Vahtera
#

from os import system, name

def clearScreen():  # Compatibility, Deprecated.
    '''Clear Screen'''
    system('cls' if name == 'nt' else 'clear')  # Clear Screen depending on OS

def clear_screen():
    '''Clear Screen'''
    system('cls' if name == 'nt' else 'clear')  # Clear Screen depending on OS

def openFile(F_NAME):  # Compatibility, Deprecated.
    '''Open file in UTF-8'''
    T_LIST = []
    with open(F_NAME, "r", encoding="utf-8") as F:  # Open the File and Read the Lines into an Array
        T_LIST = [LINE.strip() for LINE in F]
    return T_LIST

def open_file(F_NAME):
    '''Open file in UTF-8 encoding'''
    T_LIST = []
    with open(F_NAME, "r", encoding="utf-8") as F:  # Open the File and Read the Lines into an Array
        T_LIST = [LINE.strip() for LINE in F]
    return T_LIST
