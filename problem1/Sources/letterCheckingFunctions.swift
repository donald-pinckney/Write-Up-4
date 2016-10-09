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

func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
  var updatedGuess = currentInProgressWord
  for x in 0..<actualWord.count {
    if actualWord[x] == guess {
      updatedGuess[x] = guess
    }
  }
  return updatedGuess
}

func hasWon(_ inProgressWord: [Character]) -> Bool {
  return inProgressWord == randomWord
}
