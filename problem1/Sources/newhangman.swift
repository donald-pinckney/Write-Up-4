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

srandom(UInt32(time(nil)))

// Choose the random word from the file
let words = readLines(inFile: "words")
let randomWord: [Character] = Array(words[random() % words.count].characters) // Not actually perfectly random, but good enough.

// Initial state of the game. We have all body parts, nothing has been guessed, and the in progress word is all _'s.
var bodyParts = 6
var guessedLetters: [Character] = []
var inProgressWord: [Character] = [Character](repeating: "_", count: randomWord.count)

// bad guess message
func printBadGuessMessage() {
    print("I'm sorry, you guessed incorrectly!")
}

// in progress word
func printInProgressWord(inprogressWord: [Character]) {
    var wordString: String = String() 
    for index in 0..<inprogressWord.count {      
        wordString.append (inprogressWord[index])
        wordString.append (" ")  
    } 
    print("Current Word: \(wordString)")
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
func hasWon(inprogressWord: [Character]) -> Bool {
    var haswon = true
    for index in 0..<inprogressWord.count {
        if inprogressWord[index] != randomWord[index] {
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
    var newinProgressWord: [Character] = currentInProgressWord
    for index in 0..<actualWord.count { 
            if actualWord[index] == guess {
            newinProgressWord[index] = guess
        }    
    }
    return newinProgressWord
}


// This function prints the current state of the game to the player.
func printGameState() {
    printInProgressWord(inprogressWord: inProgressWord)
    printAlreadyGuessedLetters(guessedletters: guessedLetters)
    printRemainingBodyParts(bodyparts: bodyParts)
}

while bodyParts > 0 && !hasWon(inprogressWord: inProgressWord) {
    // First we print the state of the game
    printGameState()
    
    // Then we get the guess from the user. This should both output the text to prompt the user, and read the guess
    let input = readGuess()
                           
    // We check if the guess matches at all
    if hasMatch(ofGuess: input, inWord: randomWord) {
    
    // If it matches, then we fill in more of the blanks
    inProgressWord = update(currentInProgressWord: inProgressWord, actualWord: randomWord, guess: input)

    } else {

    // If it doesn't match at all, we loose a body part

    bodyParts -= 1
    printBadGuessMessage()
    }
    guessedLetters.append(input)

}

// If bodyParts == 0, then the game ended because of a loss.
if bodyParts == 0 {
    printLoseMessage()
} else {
    printWinMessage()
}

print("The actual word is: \(String(randomWord))")
