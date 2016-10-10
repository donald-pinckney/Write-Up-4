// This function takes a character and an array of characters as input, and outputs a bool describing whether the character is in the array
func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
  var isInWord = false
  for x in inWord {
    if x == ofGuess {
      isInWord = true
      break
    }
  }
  return isInWord
}

// This function takes as input two arrays of characters and a character
// It outputs an array of characters that is based on the first array, but matching the second array in spaces where the second array contained the input character
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
  var updatedGuess = currentInProgressWord
  for x in 0..<actualWord.count {
    if actualWord[x] == guess {
      updatedGuess[x] = guess
    }
  }
  return updatedGuess
}

// This function takes an array of characters, and returns a bool representing whether the array matches an outside array
func hasWon(_ inProgressWord: [Character]) -> Bool {
  return inProgressWord == randomWord
}
