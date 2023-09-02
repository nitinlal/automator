


# create method to read user input
def read_user_name():
    user_input = input("Enter your name: ")
    #vaidate user input
    if user_input == "":
        print("Please enter your name")
        read_user_name()
    return user_input

# create method to scan user input
read_user_name()


