//this function prints the number of remaining body parts
func printRemainingBodyParts(_ bodyParts: Int) {
	print("remaining body parts:", bodyParts)
}

//finds if the player has won yet
func hasWon(_ inProgressWord: [Character]) -> Bool {
	var haveYouWon = true
	for i in 0..<inProgressWord.count {
		if inProgressWord[i] == "_" {
			haveYouWon = false
		}
	}
	return haveYouWon
}

//checks if your guess matches a letter in the word
func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
	var doesItHaveAMatch = false
	for i in 0..<inWord.count {
		if ofGuess == (inWord[i]) {
			doesItHaveAMatch = true
		}
	}
	return doesItHaveAMatch
}

//reads input from the player
func readGuess() -> Character {
	let guess: Character = Character(readLine()!)
	return guess
}

//draws a cool dead face
func printLoseMessage() {
	let stringVersionOfRandomWord = String(randomWord)
	print()
	print()
	print("answer:", stringVersionOfRandomWord)
	print("You got hanged. Better luck next time!")
	print("  X    X  ")
	print("    <     ")
	print("  ______  ")
	print("   U      ")
}

//this function is called very rarely
func printWinMessage() {
	let stringVersionOfRandomWord = String(randomWord)
	print("You win! You're amazing!", stringVersionOfRandomWord)
}

//tells you that you messed up
func printBadGuessMessage() {
	print()
	print("Sorry, your guess is not in the word.")
}

//shows you what you've already guessed
//How to sabotage somebody else's game:
//tell them to guess a letter that they've already guessed
func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
	let stringVersionOfAlreadyGuessedLetters = String(guessedLetters)
	print("already guessed letters:", stringVersionOfAlreadyGuessedLetters)
}

//shows the incomplete word
func printInProgressWord(_ inProgressWord: [Character]) {
	var stringVersionOfInProgressWord: String = ""
	for i in 0..<inProgressWord.count {
		stringVersionOfInProgressWord += String(inProgressWord[i])
		stringVersionOfInProgressWord += " "//adds a space to make it easier to read
	}
	print()
	print("Your Word:", stringVersionOfInProgressWord)
}

//updates the game between inputs
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
	printGameState()
	for i in 0..<inProgressWord.count {
		if guess == actualWord[i] {
			inProgressWord[i] = guess
		}
	}
	return inProgressWord
}