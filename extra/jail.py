import os
import sys


print("Welcome to ULTRASAFE Jail! There's definitely no way you can read the flag file, right?")

code = input("Give code: ")

filters = ["eval", "exec", "import", "open", "os", "read", "system", "write"]

if any(banned_word in code for banned_word in filters):
    print("Hey, you can't do that! That's illegal!")
else:
    print("Running!")
    exec(code)
