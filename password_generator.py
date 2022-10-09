import random

lower_case = "bcdfghjklmnpqrstvwxyz"
upper_case = "BCDFGHJKLMNPQRSTVWXYZ"
vowels = "aAeEiIoOuU"
numbers = "0123456789"
symbols = "`-=[]\;,./~!@#$%^&*()_+{}|:<>?"
length_for_password = 12

def password_generator():
    characters = lower_case + upper_case + vowels + numbers+ symbols
    password = "".join(random.sample(characters, length_for_password))
    print("Your generated password is " + password)

def readable_password_generator():
    letter_characters = lower_case + upper_case
    letter1 = "".join(random.sample(letter_characters, 1))
    letter2 = "".join(random.sample(letter_characters, 1))
    vowel = "".join(random.sample(vowels, 1))
    random_number = "".join(random.sample(numbers, 1))
    set1 = letter1 + vowel + letter2 + random_number
    letter1 = "".join(random.sample(letter_characters, 1))
    letter2 = "".join(random.sample(letter_characters, 1))
    vowel = "".join(random.sample(vowels, 1))
    random_symbol = "".join(random.sample(symbols, 1))
    set2 = letter1 + vowel + letter2 + random_symbol
    letter1 = "".join(random.sample(letter_characters, 1))
    letter2 = "".join(random.sample(letter_characters, 1))
    vowel = "".join(random.sample(vowels, 1))
    random_number = "".join(random.sample(numbers, 1))
    set3 = letter1 + vowel + letter2 + random_number
    password = set1 + set2 + set3
    print("Your readable generated password is " + password)

password_generator()
readable_password_generator()
