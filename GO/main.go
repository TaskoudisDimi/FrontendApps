// package is a Go keyword that specifies which code package this file belongs to.
package main

//import is a Go keyword that tells the Go compiler which other packages you want to use in this file.

//"strings"
import (
	"fmt"
)

//Go is a statically typed language. Statically typed means that each statement in the program is checked at compile time.

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

	//use the := assignment operator to declare and instantiate the variable sum
	// sum := 10 - 5
	// fmt.Println(sum)

	// absoluteZero := -459.67
	// fmt.Println(absoluteZero)

	// 	uint8       unsigned  8-bit integers (0 to 255)
	// 	uint16      unsigned 16-bit integers (0 to 65535)
	// 	uint32      unsigned 32-bit integers (0 to 4294967295)
	// 	uint64      unsigned 64-bit integers (0 to 18446744073709551615)
	// 	int8        signed  8-bit integers (-128 to 127)
	// 	int16       signed 16-bit integers (-32768 to 32767)
	// 	int32       signed 32-bit integers (-2147483648 to 2147483647)
	// 	int64       signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

	// float32     IEEE-754 32-bit floating-point numbers
	// float64     IEEE-754 64-bit floating-point numbers
	// complex64   complex numbers with float32 real and imaginary parts
	// complex128  complex numbers with float64 real and imaginary parts

	//As discussed earlier in this article, there are architecture-independent types, and implementation-specific types.
	//For integer data, it’s common in Go to use the implementation types like int or uint instead of int64 or uint64.
	//For instance, if you use an int64 and compile to a 32-bit architecture,
	//it will take at least twice as much time to process those values as it takes additional CPU cycles to move the data across the architecture.
	//If you used an int instead, the program would define it as a 32-bit size for a 32-bit architecture, and would be significantly faster to process.

	//Go has the potential to both overflow a number and wraparound a number when you try to store a value larger than the data type was designed to store,
	//depending on if the value is calculated at compile time or at runtime.

	// var maxNumber uint32 = 4294967295 // Max uint32 size
	// fmt.Println(maxNumber)

	// myBool := 5 > 8
	// fmt.Println(myBool)

	// //Interpreted String
	// a := "Say \"hello\" to Go!"
	// fmt.Println(a)

	//Strings with UTF-8 Characters
	//UTF-8 is an encoding scheme used to encode variable width characters into one to four bytes.
	// a := "Hello, 世界"
	// for i, c := range a {
	// 	fmt.Printf("%d: %s\n", i, string(c))
	// }
	// fmt.Println("length of 'Hello, 世界': ", len(a))

	//An array is an ordered sequence of elements. The capacity of an array is defined at creation time.
	//Once an array has allocated its size, the size can no longer be changed.
	//Because the size of an array is static, it means that it only allocates memory once.
	//This makes arrays somewhat rigid to work with, but increases performance of your program.
	// data := [3]string{"blue", "red", "yellow"}
	// fmt.Println(data)

	//A slice is an ordered sequence of elements that can change in length. Slices can increase their size dynamically.
	//When you add new items to a slice, if the slice does not have enough memory to store the new items, it will request more memory from the system as needed.
	//Because a slice can be expanded to add more elements when needed, they are more commonly used than arrays.

	// data := []string{"red", "blue", "yellow"}
	// fmt.Println(data)
	// data = append(data, "newColor")
	// fmt.Println(data)

	// //The map is Go’s built-in hash or dictionary type. Maps use keys and values as a pair to store data.
	// //This is useful in programming to quickly look up values by an index, or in this case, a key.
	// data := map[string]string{"name": "test1", "color": "blue"}
	// fmt.Println(data["color"])

	// //Convert Data Types
	// var big int64 = 129
	// var little int8
	// little = int8(big)
	// fmt.Println(little)

	// var x int64 = 57
	// var y float64 = float64(x)
	// fmt.Printf("%.2f\n", y)

	// var f float64 = 390.0
	// var i int = int(f)
	// fmt.Printf("f = %.2f\n", f)
	// fmt.Printf("i = %2d\n", i)

	// b := 125.0
	// c := 390.8
	// fmt.Println(int(b))
	// fmt.Println(int(c))

	// a := 5 / 2
	// fmt.Println(a)

	// //You can convert numbers to strings by using the strconv.Itoa method from the strconv package in the Go standard libary.
	// a := strconv.Itoa(12)
	// fmt.Printf("%q\n", a)

	// f := 524.69
	// fmt.Printf(fmt.Sprint(f))

	// lines_yesterday := "50"
	// lines_today := "108"

	// yesterday, err := strconv.Atoi(lines_yesterday)
	// if err != nil {
	// 	log.Fatal(err)
	// }

	// today, err := strconv.Atoi(lines_today)
	// if err != nil {
	// 	log.Fatal(err)
	// }
	// lines_more := today - yesterday

	// fmt.Println(lines_more)

	// a := "my string"
	// b := []byte(a)
	// c := string(b)
	// fmt.Println(a)
	// fmt.Println(b)
	// fmt.Println(c)

	// ss := "ToUpperString"
	// fmt.Println(strings.ToUpper(ss))
	// fmt.Println(strings.ToLower(ss))
	// fmt.Println(strings.Contains(ss, "to"))
	// fmt.Println(strings.Count(ss, "p"))
	// fmt.Println(len(ss))
	// fmt.Println(strings.Join([]string{"Dimitris", "Teo"}, ","))

	// data := "  username password     email  date"
	// fields := strings.Fields(data)
	// fmt.Printf("%q", fields)

	// data := "Dimitris has a ballon"
	// fmt.Println(strings.ReplaceAll(data, "has", "had"))

	// slice := []string{"one", "two", "three"}
	// fmt.Println(slice)

	//With the three ways to declare variables, the Go community has adopted the following idioms:
	//Only use long form, var i int, when you’re not initializing the variable.
	//Use short form, i := 1, when declaring and initializing.
	//If you did not desire Go to infer your data type, but you still want to use short variable declaration, you can wrap your value in your desired type

	//var i int
	//var i int = 1
	//i := 1
	//i := int32(1)

	//If a variable starts with an uppercase letter, then that variable is accessible outside the package it was declared in (or exported).
	//If a variable starts with a lowercase letter, then it is only available within the package it is declared in.
	// var Email string
	// var password string

	//Note: When you declare and initialize a variable, you can use :=, however, when you want to simply change the value of an already declared variable,
	//you only need to use the equal operator (=).

	// i := 49
	// i = 59
	// fmt.Println(i)

	// 	j, k, l := "shark", 2.05, 15
	// 	fmt.Println(j)
	// 	fmt.Println(k)
	// 	fmt.Println(l)

	// printLocal()
	// fmt.Println(g)

	// const myVar string = "TestStringConstValue"
	// fmt.Println(myVar)

	// hours := 12
	// fmt.Println(hours * year)

	x := 2
	fmt.Println(-x)
}

// const (
// 	year   = 1000
// 	months = 12
// )

// var g = "global"

// func printLocal() {
// 	l := "local"
// 	fmt.Println(l)
// }

//Go programs need to compile before they run. When you call go run with the name of a file,
//in this case hello.go, the go command will compile the application and then run the resulting binary.

//Go applications require a main package and exactly one main() function that serves as the entry point for the application.
