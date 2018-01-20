#!/usr/local/bin/python


number = int(input("Please Enter any Number: "))
def reverse_integer(number):
        sign = -1 if number < 0 else 1
        number *= sign

        # Remove leading zero in the reversed integer
        while number:
            if number % 10 == 0:
                number /= 10
            else:
                break

        # string manipulation
        number = str(number)
        lst = list(number)  # list('234') returns ['2', '3', '4']
        lst.reverse()
        number = "".join(lst)
        number = int(number)
        return sign*number
    
#print(reverse_integer(number))

try:
    val = int(number)
    if number == str(number)[::-1]:
        print('The given number is PALINDROME')
    else:
        print('The given number is NOT a palindrome')
#        print(reverse_integer(number))
        reverse = (reverse_integer(number))
        print (reverse)
except ValueError:
    print("That's not a valid number, Try Again !")
