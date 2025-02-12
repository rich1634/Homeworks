user_input = input("Please enter a string:  ")
uppercase_count = sum(1 for char in user_input if char.isupper())
print(f"Number of capital letters: {uppercase_count}")