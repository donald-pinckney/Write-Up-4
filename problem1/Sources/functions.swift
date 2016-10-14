//
//  Package.swift
//  
//
//  Created by Alex Hill on 10/13/16.
//
//

import Foundation

// This file provides the functions necessary for the game Hangman in main.swift


//These are the print functions

func printInProgressWord(_ inProgressWord: [Character]) {
    print(inProgressWord)
}

func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
    print("These are your already guessed letters: \(guessedLetters)")
}

func printRemainingBodyParts(_ bodyParts: Int) {
    print("You have these many body parts remaining: \(bodyParts)")
}

func printBadGuessMessage() {
    print("Your letter is not in this word")
}

func printLoseMessage() {
    print("You have been hung XD")
}

func printWinMessage() {
    print("Congratulations! You have escaped death!")
}


//These are other hard functions
func hasWon(_ inProgressWord: [Character]) -> Bool {
    //Here I want to test whether or not the in progress word is equal to the random word
    var timesRun = 0
    var hasWonBool = true
    while timesRun < randomWord.count {
        if inProgressWord[timesRun] != randomWord[timesRun] {
            hasWonBool = false
            break
        }
        timesRun += 1
    }
    return hasWonBool
}


//Reading user input for the game
func readGuess() -> Character{
    let guess:Character = Character(readLine()!)
    return guess
}


//Testing whether or not the guess has a match in the word. Return a boolean for this.
func hasMatch(ofGuess input: Character, inWord randomWord: [Character]) -> Bool {
    var myReturnedBool = false
    for randomWordForIn in randomWord {
        if input == randomWordForIn {
            myReturnedBool = true
            break
        }
    }
    return myReturnedBool
}

func update(currentInProgressWord inProgressWord: [Character], actualWord randomWord: [Character], guess input: Character) -> [Character] {
    var timesRun = 0
    var tempInProgressWord = inProgressWord
    while timesRun < randomWord.count {
        if input == randomWord[timesRun] {
            tempInProgressWord[timesRun] = input
        }
        timesRun += 1
    }
    return tempInProgressWord
}









