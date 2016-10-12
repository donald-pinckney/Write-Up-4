import Foundation

//functions in order of appearance

func printInProgressWord(_ inProgressWord: [Character]) {
	print("Progress: \(inProgressWord)")
}

func printAlreadyGuessedLetters(_ guessedLetters: [Character]) {
	print("Already tried: \(guessedLetters)")
}

func printRemainingBodyParts(_ bodyParts: Int) {
	print("Body left: \(bodyParts)")
}

//while loop functions
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

//end game functions
func printLoseMessage() {
	print("Your dead :|")
}

func printWinMessage() {
	print("Pure luck :)")
}