package main

import "fmt"

func reverse(val string) string {

	length := len(val) - 1

	println("lenght of string", +length)

	var reverse string

	for i := length; i >= 0; i-- {
		reverse = reverse + string(val[i])
	}
	return reverse
}

func main() {
	// scan an input from user
	var input string
	println("Enter a string")

	// scan the input
	_, err := fmt.Scan(&input)

	if err != nil {

		main()

	}

	// call the reverse function
	reverseString := reverse(input)
	println("Reverse of the string is", reverseString)
}
