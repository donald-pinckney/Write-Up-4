//Functions of Hangman Game 

// Print the in progress word
func printInProgressWord(_ word: [Character]) {
  print(word)
}

// Print letters that have already been guessed
func printAlreadyGuessedLetters(_ letters: [Character]) {
  print(letters)
}

// Print the remaining lives
func printRemainingBodyParts(_ bodyParts: Int) {
  print(bodyParts)
}


func readGuess() -> Character {
  let input: Character = Character(readLine(!)!)
  return input
}
// Checks to see if player has won
func hasWon(_ word: [Character]) -> Bool {
  let testArray: [Character] = [Character](repeating: "_", count: randomWord.count)
  if  word == testArray {
    return true
  }
  return false
}

// Says if letter is in word
func hasMatch(ofGuess: String, inWord: String) -> Bool {
  for character in inWord.characters {
    if character == ofGuess {
      return true
    }
  }
  return false
}
// updates letters in word
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
  var inProgressWord: [Character] = currentInProgressWord
  for i in 0..<currentInProgressWord.count  {
    if actualWord[i] == guess {
      inProgressWord[i] = guess
    }
  }
  return inProgressWord
}

// Says incorrect
func printBadGuessMessage() {
  print("No")
}
// says correct
func printLoseMessage() {
  print("You lost. Do Better")
}
// prints message that player won
func printWinMessage() {
  print("Congratulations. You won.")
}
