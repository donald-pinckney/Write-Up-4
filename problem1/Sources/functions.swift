import Foundation

//functions in order of appearance

func printInProgressWord(progress: [Character]) {
	print("Progress: \(progress)")
}

func printAlreadyGuessedLetters(guessed: [Character]) {
	print("Already tried: \(guessed)")
}

func printRemainingBodyParts(body: Int) {
	print("Body left: \(body)")
}

//while loop functions
func readGuess() -> Character {
	print("Type a letter to guess: ", terminator: "")
	let guess = Character(readLine()!)
	return guess
}

func hasWon(inProgressWord: [Character])-> Bool {
	if inProgressWord == randomWord {
		return true
	} 
	else {
		return false
	}
	 
}

func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
	for letter in inWord {
		if letter == ofGuess {
			return true
		}
	}
	else {
		return false
	}
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
	print("Better luck next time. It looks like you'll need it.")
}

//end game functions
func printLoseMessage() {
	print("Sorry, you're pretty much dead now since you have no body left :|")
}

func printWinMessage() {
	print("A superb demonstration of wizardry.")
}