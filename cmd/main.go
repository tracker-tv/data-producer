package main

import (
	"fmt"
)

func main() {
	value := add(1, 2)
	fmt.Println(value)
}

func add(a, b int) int {
	return a + b
}
