//
//  main.swift
//  password generator
//
//  Created by Thisura Manjitha Samarakoon on 2022-10-17.
//

import Foundation

let lower_case = "bcdfghjklmnpqrstvwxyz"
let upper_case = "BCDFGHJKLMNPQRSTVWXYZ"
let vowels = "aAeEiIoOuU"
let numbers = "0123456789"
let symbols = "`-=[];,./~!@#$%^&*()_+{}|:<>?"
let length_for_password = 12

let characters = lower_case + upper_case + vowels + numbers + symbols

func passwordGenerator(inputCharacters: String, pwdLength: Int) -> String {
    let inputCharactersLength = UInt32(inputCharacters.count)
    var returnValue = ""
    for _ in 0 ..< pwdLength {
            let randomPosition = arc4random_uniform(inputCharactersLength)
        //var character = inputCharacters.randomElement()
            //returnValue += character
        }
        
        return returnValue
}

func readablePasswordGenerator(characters: String, length: Int) -> String {
    return "hey rpw"
}

print("Hello, World!")

