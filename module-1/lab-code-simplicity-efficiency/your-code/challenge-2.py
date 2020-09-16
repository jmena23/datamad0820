"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

from string import ascii_lowercase
import random
import sys

def RandomStringGenerator(a, b, n):
    opciones = list(ascii_lowercase) + [str(i) for i in range(10)]

    resultado = []
    if a < b:
        for i in range(n):
            resultado.append("".join(random.sample(opciones,random.choice(range(a, b)))))
    elif a == b:
        for i in range(n):
            resultado.append("".join(random.sample(opciones,a)))
    else:
        sys.exit('Incorrect min and max string lengths. Try again.')
    
    return resultado

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(RandomStringGenerator(int(a), int(b), int(n)))