"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

valids = ["zero", "one", "two", "three", "four", "five"]
numbers = {"zero": 0, "one": 1, "two": 2, "three" : 3, "four" : 4, "five": 5, 
           "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10}
negatives = {"zero": 0, "one": -1, "two": -2, "three" : -3, "four" : -4, "five": -5}
calc = ["plus", "minus"]

if a in valids and b in calc and c in valids:
    if b == calc[0]:
        res = numbers[a] + numbers[c]
        res = [i for i in numbers.keys()][res]
        print(f"{a} {b} {c} equals {res}")
    elif b == calc[1]:
        if numbers[a] >= numbers[c]:
            res = numbers[a] - numbers[c]
            res = [i for i in negatives.keys()][res]
            print(f"{a} {b} {c} equals {res}")
        elif numbers[c] > numbers[a]:
            res = abs(numbers[a] - numbers[c])
            res = [i for i in negatives.keys()][res]
            print(f"{a} {b} {c} equals negative {res}")
else:
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
