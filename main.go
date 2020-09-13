package main

// #cgo CFLAGS: -Ilib
// #cgo LDFLAGS: -Llib -lsum
// #include <sum.h>
import "C"
import "fmt"

func main() {
	fmt.Println(C.sum(10, 20))
}
