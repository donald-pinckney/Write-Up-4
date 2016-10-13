import Foundation

//functions in order of appearance

func printInProgressWord(_ inProgressWord: [Character]) {
	print("Progress: ", terminator: "")
	for letter in inProgressWord {
		print(letter, terminator: "")
	}
	print("")
}

func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
	print("Already tried: ", terminator: "")
	for guess in guessedLetters.sorted() {
		print(guess, terminator: ",")
	}
	print("")
}

func printRemainingBodyParts(_ bodyParts: Int) {
	print("Body parts left: \(bodyParts)")
	if bodyParts == 6 {
		print("______")
		print("|    |")
		print("|")
		print("|")
		print("|")
		print("|_________")
	}
	else if bodyParts == 5 {
		print("______")
		print("|    |")
		print("|    0")
		print("|")
		print("|")
		print("|_________")
	}
	else if bodyParts == 4 {
		print("______")
		print("|    |")
		print("|    0")
		print("|    |")
		print("|")
		print("|_________")
	}
	else if bodyParts == 3 {
		print("______")
		print("|    |")
		print("|    0")
		print("|   /|")
		print("|")
		print("|_________")
	}
	else if bodyParts == 2 {
		print("______")
		print("|    |")
		print("|    0")
		print("|   /|| ")
		print("|")
		print("|_________")
	}
	else if bodyParts == 1 {
		print("______")
		print("|    |")
		print("|    0")
		print("|   /|| ")
		print("|    /")
		print("|_________")
	}
	else {
		print("______")
		print("|    |")
		print("|    0")
		print("|   /|| ")
		print("|    /|")
		print("|_________")
	}
	print("\n")
}

func readGuess() -> Character {
	print("Guess a letter: ", terminator: "")
	let guess = Character(readLine()!) 
	return guess
}

func hasWon(_ inProgressWord: [Character]) -> Bool {
	var wonHas: Bool = false
	if inProgressWord == randomWord {
		wonHas = true 
	}
	return wonHas
}

func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
	var matchHas: Bool = false
	for letter in inWord {
		if ofGuess == letter {
			matchHas = true
		}
	}
	return matchHas
}

func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
	var currentInProgressWord = currentInProgressWord
	for (index, letter) in actualWord.enumerated() {
		if guess == letter {
			currentInProgressWord[index] = guess
		}
	}
	return currentInProgressWord
}

func printBadGuessMessage() {
	print("Ouch :(")
}

func printLoseMessage() {
	print("Your dead :|")
	print("The word was...", terminator: "")
	for letter in randomWord {
		print(letter, terminator: "")
	}
	print("...Look it up.")
}

func printWinMessage() {
	print("Nice job! :)")
	print("Now look up ", terminator: "")
	for letter in randomWord {
		print(letter, terminator: "")
	}
	print(" in the dictionary.")
}