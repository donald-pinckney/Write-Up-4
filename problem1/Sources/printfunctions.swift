// bad guess message
func printBadGuessMessage() {
    print("I'm sorry, you guessed incorrectly!")
}

// in progress word
func printInProgressWord(inprogressWord: [Character]) { 
    print("Current Word: \(inprogressWord)")  
}    

// already guessed letters
func printAlreadyGuessedLetters(guessedletters: [Character]) {
    print("Already guessed letters: \(guessedletters)")
}

// remaining body parts
func printRemainingBodyParts(bodyparts: Int) {
    print("Remaining body parts: \(bodyparts)")
}

// lose message
func printLoseMessage() {
    print("I'm sorry, you lost!") 
}

// win message
func printWinMessage() {
    print("Yay! You won!")
} 

// has won
func hasWon(inprogressWord: [Character], randomword: [Character] = randomWord) -> Bool {
    var haswon = true
    for index in 0..<inprogressWord.count { 
        if inprogressWord[index] != randomword[index] { 
            haswon = false
            break
        } 
    }
    return haswon
}

// read guess
func readGuess() -> Character { 
    print("Please type in your guess:")
    let guess = readLine()!
    return guess[guess.startIndex] 
} 

// has match
func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
    var hasmatch = false
    for index in 0..<inWord.count {
        if ofGuess == inWord[index] {
            hasmatch = true
            break
        }
    }
    return hasmatch
} 

//update word
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
    for index in 0..<actualWord.count {
        if actualWord[index] == guess {
           currentInProgressWord[index] = guess
        }
    }  
}

