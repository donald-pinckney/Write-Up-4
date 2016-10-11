func printInProgressWord(_ inProgress: [Character]){
  for entry in inProgress{
    print("\(entry)") // Test adding terminator: ""
  }
}
func printAlreadyGuessedLetters(_ inputGuessed: [Character]){
  print("So far, you've guessed:")
  for entry in inputGuessed {
    print("\(entry)", terminator: "") // Test adding terminator: ""
  }
  print("\n")
}
func printRemainingBodyParts(_ inNumberOfParts: Int){
  print("Remaining body parts: \(inNumberOfParts)")
}

func hasWon(_ inProgress: [Character]) -> Bool {
    for eachCharacter in inProgress {
      if eachCharacter == "_"{
        return false
      }
    }
    return true
}

func readGuess() -> Character {
      print("Guess a letter by entering it (or a word that begins with it): \n")
  while(true) {
      let guess: String = String(readLine()!)
      if guess != "" {
      let guessedLetter = guess[guess.startIndex] // Cuts out only the first letter of guess
      return guessedLetter
      }
      print("Oops! Enter either a letter or a word if you want to make a guess.")
    }
}

func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool {
  for character in inWord {
    if ofGuess == character{
      return true
    }
  }
  return false
}

func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
  var output: [Character] = currentInProgressWord
  for index in 0..<actualWord.count {
    if actualWord[index] == guess {
      output[index] = guess
    }
  }
  return output
}

func printWinMessage() {
  print("Congrats, you win!")
}

func printLoseMessage() {
  print("Better luck next time!")
}

func printBadGuessMessage(){
  print("Ouch! That'll cost you...")
}
