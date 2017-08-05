//
//  readFile.swift
//  
//
//  Created by Gemma Bertain on 10/11/16.
//
//

import Foundation

/*
This function takes a filename as input, and reads each line sequentially.
It places each line as a String as a single entry into an array. Then it returns this array.
*/
func readLines(inFile: String) -> [String] {
    let fpo = fopen(inFile, "r")
    guard let fp = fpo else {
        fatalError("ERROR!!! Could not read file: \(inFile)")
    }
    
    var lines: [String] = []
    while true {
        var line: UnsafeMutablePointer<Int8>? = nil
        var len: Int = 0
        let read = getline(&line, &len, fp)
        if read == -1 {
            break
        }
        
        let lineStr = String(cString: line!).trimmingCharacters(in: .newlines)
        lines.append(lineStr)
    }
    
    fclose(fp)
    return lines
}

// start of my code

func printInProgressWord(inProg: [Character]) -> [Character] {
    let returnValue: [Character] = inProg
    //let _ = " current word is \(printInProgressWord)"
    return returnValue
}

func printAlreadyGuessedLetters(guessedLet: [Character]) -> [Character] {
    let returnValue: [Character] = guessedLet
    //let _ = "The letters you have guessed: \(guessedLetters)"
    return returnValue
}

func printRemainingBodyParts(bodyParts: Int) -> String {
     let returnValue = bodyParts
     return returnValue
}

func hasWon(_: [Character]) -> Bool {
    var status = true

    for i in inProgressWord {
        if i == "_" {
            status = false
        }
    }
    return status
}

func printBadGuessMessage() {
    // let returnValue = "bad guess"
   print("Bad Guess, try again")
    //return printBadGuessMessage()
}

func printLooseMessage() {
   print("Soorry, but yoou are a looser.")
}

func printWinMessage() {
    // let theWin = "Yay! You won!!! Congrats, I hope you play again"
    print("You won - Congrats - hope you play again")
}

func readGuess() -> Character {
    let newGuess = "Please enter a letter you would like to guess"
    return newGuess
}

func update() -> String {
    return update()
}

func hasMatch(ofGuess: String, inWord: [Character]) -> Bool {
    let status = true
    return status
}
