import random

lower_case = "abcdefghijklmnopqrstuvwxyz"
upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
number = "0123456789"
symbol = "`-=[]\;,./~!@#$%^&*()_+{}|:<>?"
length_for_password = 12

def password_generator():
    use_for = lower_case + upper_case + number + symbol
    password = "".join(random.sample(use_for, length_for_password))
    print("Your generated password is " + password)

def readable_password_generator():
    print("Your generated password is ")

password_generator()
readable_password_generator()
