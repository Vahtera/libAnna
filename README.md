# libAnna

A library module that contains
* most commonly-used functions and/or constants/variables for each language I develop in.
* shared resources (for example, english wordlists) common to multiple projects
* git-hooks for different languages to use for version information

## Xojo

### libAnna.xojo_code

Usage: ```libAnna.Initialize``` (Remember to use include_script.xojo_code to copy necessary files beforehand.)

* Defines project folder, and libAnna folder
* Defines and provides english wordlists and versioning from Git
* Provides public function ```LoadFile```

### include_script.xojo_code

Usage: Copy and paste into New IDE Script in Xojo IDE, uncomment lines as needed

* Provides the ability to automatically copy libAnna files to project.

## Python

### colors.py

Usage ```from libAnna.colors import *```

Defines ANSI color constants

### functions.py

Usage: ```from libAnna.functions import [open_file] [clear_screen]```

Defines the following functions:

* ```open_file(filename)```
* ```clear_screen()```

## C#

### libAnnaC.cs

Usage: ```Using: libAnnaC;```

Defines ANSI color constants and provides two extensions:

* ```String.Capitalize``` which capitalizes the first letter of a string, and
* ```IList<T>.Shuffle``` which shuffles the list into a random order

## Delphi

### libAnna.pas

Usage: ```{$include libAnna/libAnna.pas}``` 

Prodives two functions:

* ```AddSpaces(string): string;``` which addes spaces between every character in a string, and
* ```GetFileName(strings, strings): strings;``` which extracts the full path of a resource file and gives the correct format based on runtime OS.

## JavaScript

Usage:

* Add ```"install-libAnna": "npm install ./libAnna && node ./node_modules/libAnna/copyFiles.js"``` to your main ```package.json```, and
* run ```npm run install-libAnna```

### libAnna.js

Exports functions:

* ```loadWords(filename)``` which loads words from file into a list, and
* ```pickRandomWord(list)``` which takes a list/array as an argument and randomly picks on of the items in it, then returns that as a string.
