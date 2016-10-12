//This file contains all the functions necessary to run/compile main.swift

//how far the user has gotten
func printInProgressWord(_ word: [Character]) {
  for i in 0..<word.count {
    print(word[i])
  }
}
//tells user what he's guessed
func printAlreadyGuessedLetters(_ letters: [Character]) {
  print(letters)
}
//how many body parts?
func printRemainingBodyParts(_ parts: Int) {
  print(parts)
}
//takes in guess and returns it
func readGuess() -> Character {
  let input = readLine()!
  return Character(input)
}
//checks if guess is right
func hasMatch(ofGuess input: Character, inWord word: [Character]) -> Bool {
  for i in 0..<word.count {
    if word[i] == input {
      return true
    }
  }
  return false
}
//fixes '_' array
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character] {
  //temp arr to modify
  var newArr: [Character] = currentInProgressWord

  for i in 0..<actualWord.count {
    if guess == actualWord[i] {
      newArr[i] = guess
    }
  }
  return newArr
}

func printBadGuessMessage() {
  print("Wrong! There goes a body part! :(")
}

func hasWon(_ word: [Character]) -> Bool {
  for i in word {
    if i == "_" {
      return false
    }
  }

  return true
}

func printWinMessage() {
  print("Congratulations, you win!")
}

func printLooseMessage() {
  print("You lose... Better luck next time!")
}
