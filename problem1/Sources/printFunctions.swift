// This functions takes an array of characters as input and shows them as part of a string of printed text describing the guessed portions of a word
func printInProgressWord(_ inProgressWord: [Character]) {
  print("Your word so far is '\(assembleGuess(guessToAssemble: inProgressWord))'")
}

// This function takes an array of characters as input and shows them as part of a string of printed text describing guessed letters
func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
  print("You have already guessed \(guessedLetters)")
}

// This function takes an Int as input and shows it as part of a string of printed text describing remaining body parts
func printRemainingBodyParts(_ bodyParts: Int) {
  print("You have \(bodyParts) body parts remaining")
}

// This function prints a sttring of text saying that the player has won
func printWinMessage() {
  print("Congradulations, you have won! You correctly guessed the word '\(assembleWord(wordToAssemble: inProgressWord))'. You had \(bodyParts) bodyparts remaining.")
}

// This function prints a string of text saying that the player has lost
func printLoseMessage() {
  print("I'm sorry, you have lost. The full word was '\(assembleWord(wordToAssemble: randomWord))', and you managed to guess '\(assembleGuess(guessToAssemble: inProgressWord))'.")
}

// This function prints a string of text saying that a character is not in a word
func printBadGuessMessage() {
  print("I'm sorry, that letter was not in the word.")
}
