func printInProgressWord(_ inProgressWord: [Character]) {
  print("Your word so far is \(inProgressWord)")
}

func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
  print("You have already guessed \(guessedLetters)")
}

func printRemainingBodyParts(_ bodyParts: Int) {
  print("You have \(bodyParts) body parts remaining")
}

func printWinMessage() {
  print("Congradulations, you have won! You correctly guessed the word \(inProgressWord). You had \(bodyParts) bodyparts remaining.")
}

func printLoseMessage() {
  print("I'm sorry, you have lost. The full word was \(randomWord), and you managed to guess \(inProgressWord).")
}

func printBadGuessMessage() {
  print("I'm sorry, that letter was not in the word.")
}
