import Foundation
srandom(UInt32(time(nil)))

// Choose the random word from the file
let words = readLines(inFile: "words")
let randomWord: [Character] = Array(words[random() % words.count].characters) // Not actually perfectly random, but good enough.


// Initial state of the game. We have all body parts, nothing has been guessed, and the in progress word is all _'s.
var bodyParts = 6
var guessedLetters: [Character] = []
var inProgressWord: [Character] = [Character](repeating: "_", count: randomWord.count)

// This function prints the current state of the game to the player.
func printGameState() {
	printInProgressWord(inProgressWord)
	printAlreadyGuessedLetters(guessedLetters)
	printRemainingBodyParts(bodyParts)
}

while bodyParts > 0 && !hasWon(inProgressWord) {
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
