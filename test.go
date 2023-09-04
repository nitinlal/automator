// create a method which takes a user inout and verifies if the input is a number or not

package main

import (
	"fmt"
)

func main() {
	var input string
	fmt.Println("Enter a number")
	_, err := fmt.Scan(&input)
	if err != nil {
		fmt.Println("Not a number")
	} else {
		fmt.Println("Number")
	}
}

// Path: test.go
// how do i run this program?
