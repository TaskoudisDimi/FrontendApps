// package is a Go keyword that specifies which code package this file belongs to.
package main

//import is a Go keyword that tells the Go compiler which other packages you want to use in this file.
import (
	"fmt"
	//"strings"
)

func main() {
	// //In the “Hello, World!” program, the string literal is "Hello, World!" while the string value is Hello, World! without the quotation marks.
	// //The string value is what we see as the output in a terminal window when we run a Go program.
	fmt.Println("Hello World")
	//fmt.Println("Please enter your name")
	// //The var name string line will create a new variable using the var keyword. You name the variable name, and it will be of type string.
	// var name string
	// fmt.Scanln(&name)
	// //This uses the TrimSpace function, from Go’s standard library strings package,
	// //on the string that you captured with fmt.Scanln.
	// //The strings.TrimSpace function removes any space characters, including new lines, from the start and end of a string.
	// name = strings.TrimSpace(name)
	// fmt.Printf("Hi, %s! I'm Go!", name)

	//fmt.Println("Line1\nLine2")
	//fmt.Println("Line1\tLine2")
	//fmt.Println("Sammy says, \"Hello!\"")

}

//Go programs need to compile before they run. When you call go run with the name of a file,
//in this case hello.go, the go command will compile the application and then run the resulting binary.

//Go applications require a main package and exactly one main() function that serves as the entry point for the application.
