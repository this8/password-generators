package main

import (
	"fmt"
	"math/rand"
	"strings"
	"time"
)

type passwordGenerator struct {
	LengthForPassword int
}

func NewPassWordGenerator(lengthForPassword int) *passwordGenerator {
	return &passwordGenerator{
		LengthForPassword: lengthForPassword,
	}

}

func main() {
	lowerCase := "bcdfghjklmnpqrstvwxyz"
	upperCase := "BCDFGHJKLMNPQRSTVWXYZ"
	vowels := "aAeEiIoOuU"
	numbers := "0123456789"
	symbols := "`-=[];,./~!@#$%^&*()_+{}|:<>?"
	characters := lowerCase + upperCase + vowels + numbers + symbols

	generator := NewPassWordGenerator(100)
	generator.GeneratePassword(characters)
}

func (pw *passwordGenerator) GeneratePassword(characters string) {
	rand.Seed(time.Now().UnixNano())
	chars := []rune(characters)
	var b strings.Builder
	for i := 0; i < pw.LengthForPassword; i++ {
		b.WriteRune(chars[rand.Intn(len(chars))])
	}
	password := b.String()
	fmt.Println("Your generated password is " + password)
}
