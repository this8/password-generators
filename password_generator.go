package main

import (
	"fmt"
	"math/rand"
	"time"
	"strings"
)

func main() {
	lowerCase := "bcdfghjklmnpqrstvwxyz"
	upperCase := "BCDFGHJKLMNPQRSTVWXYZ"
	vowels := "aAeEiIoOuU"
	numbers := "0123456789"
	symbols := "`-=[];,./~!@#$%^&*()_+{}|:<>?"
	characters := lowerCase + upperCase + vowels + numbers + symbols
	lengthForPassword := 12
	
	passwordGenerator(characters, lengthForPassword)
	// readablePasswordGenerator()
}

func passwordGenerator(characters string, lengthForPassword int) {
	rand.Seed(time.Now().UnixNano())
	chars := []rune(characters)
	var b strings.Builder
	for i := 0; i < lengthForPassword; i++ {
    	b.WriteRune(chars[rand.Intn(len(chars))])
	}
	password := b.String()
	fmt.Println("Your generated password is " + password)
}


// func readablePasswordGenerator() {
// 	fmt.Println("Your readable generated password is ")
// }