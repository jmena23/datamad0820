#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 
import math
import os
import random
import sys


#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 1:")
square_number = [i**2 for i in range(20)]
print(square_number)


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 2:")
power_of_two = [2**i for i in range(50)]
print(power_of_two)


#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 3:")
sqrt = [math.sqrt(i) for i in range(100)]
print(sqrt)


#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 4:")
my_list = [(-i) for i in reversed(range(11))]
print(my_list)


#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 5:")
odd = [i for i in range(1,101) if i%2 != 0]
print(odd)


#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 6:")
divisible_by_seven = [i for i in range(1, 1001) if i%7 == 0]
print(divisible_by_seven)


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

print("\n")
print("Ejercicio 7:")
teststring = 'Find all of the words in a string that are monosyllabic'

non_vowels = [i for i in teststring if i not in ["a","e","i","o","u"]]
print(non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 8:")
phrase = 'The Quick Brown Fox Jumped Over The Lazy Dog'

capital_letters = [i[0] for i in phrase.split(" ")]
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

print("\n")
print("Ejercicio 9:")
phrase2 = 'The quick brown fox jumped over the lazy dog'

consonants = [i for i in phrase2 if i not in ["a","e","i","o","u", " "]]
print(consonants)


#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

print("\n")
print("Ejercicio 10:")
files = [file for file in os.listdir('/Users/JAMS23/datamad0820')]
print(files)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 11:")
random_lists = [[random.randint(0, 101) for i in range(10)] for i in range(4)]
print(random_lists)


#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

print("\n")
print("Ejercicio 12:")
list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]

flatten_list = [j for i in list_of_lists for j in i]
print(flatten_list)


#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

print("\n")
print("Ejercicio 13:")
list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats = [float(j) for i in list_of_lists for j in i]
print(floats)


#14. Handle the exception thrown by the code below by using try and except blocks. 

print("\n")
print("Ejercicio 14:")
try:
    for i in ['a','b','c']:
        print i**2
except Exception as e:
    print("Los valores no pueden ser strings. Deben ser valores numericos")

#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

print("\n")
print("Ejercicio 15:")
x = 5
y = 0
try:
    z = x/y
except ZeroDivisionError:
    print("El denominador no puede ser 0")
finally:
    print("All Done.")


#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print("\n")
print("Ejercicio 16:")
abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print("Existen 3 valores en la lista por lo que el indice debe de ser como maximo 2 o menor")


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

print("\n")
print("Ejercicio 17:")
primer_numero = input("Escribe un numero: ")
segundo_numero = input("Escribe otro numero: ")
while True:
    try:
        resultado = float(primer_numero) / segundo_numero
        print(resultado)
        break
    except ZeroDivisionError:
        print("El segundo numero no puede ser 0. Por favor, introduce otro numero")
        segundo_numero = input("Escribe otro numero: ")
    except TypeError:
        print("El valor introducido debe ser entero o flotante\nVuelvel a introducir los 2 numeros.")
        primer_numero = input("Escribe un numero: ")
        segundo_numero = input("Escribe otro numero: ")



#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print("\n")
print("Ejercicio 18:")
try:
    f = open('testfile','r')
    f.write('Test write this')
except IOError:
    print("Error en el directorio")



#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

print("\n")
print("Ejercicio 19:")
try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except IOError:
    print("El archivo o directorio myfile.txt no existe")



#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

print("\n")
print("Ejercicio 20:")
def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')

try:
    linux_interaction()
except AssertionError:
    print("Esta funcion solo funciona en sistema operativo linux")

# Bonus Questions:
print("\n------BONUS------\n")
# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

print("\n")
print("Ejercicio 21:")
def square_num():
    primer_numero = input("Escribe un numero: ")
    while True:
        try:
            resultado = primer_numero**2
            print(resultado)
            break
        except TypeError:
            print("El valor introducido debe ser entero o flotante")
            primer_numero = input("Escribe un numero: ")
        except SyntaxError:
            print("El valor introducido debe ser entero o flotante")
            primer_numero = input("Escribe un numero: ")
        except NameError:
            print("El valor introducido debe ser entero o flotante")
            primer_numero = input("Escribe un numero: ")

square_num()


# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 

print("\n")
print("Ejercicio 22:")
#results = [num for num in range(1, 1001) for div in range(2, 10) if num%div == 0]
#print(results)
print("SIN ENCONTRAR RESULTADO VALIDO")



# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

#Total_Marks = int(input("Enter Total Marks Scored: ")) 
#Num_of_Sections = int(input("Enter Num of Sections: "))

print("\n")
print("Ejercicio 23:")
print("SIN TERMINAR")

