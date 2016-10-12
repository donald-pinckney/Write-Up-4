func printInProgressWord(_ inProgressWord: [Character]){
	print("Current word: \(inProgressWord)")
}

func printAlreadyGuessedLetters(_ guessedLetters: [Character]){
	print("Already guessed letters: \(guessedLetters)")
}

func printRemainingBodyParts(_ bodyParts: Int){
	print("Remaining Body Parts: \(bodyParts)")
}

func printBadGuessMessage(){
	print("Wrong! There goes a body part! D:")
}

func printLoseMessage(){
	print(randomWord)
	print("Too bad, you were hanged! D:")
}

func printWinMessage(){
	print(randomWord)
	print("Congratulations, you win!")
}
