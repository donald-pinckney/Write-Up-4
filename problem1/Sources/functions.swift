//This file contains all the functions necessary to run/compile main.swift

//how far the user has gotten
func inProgressWord(_ word: [Character]) {
  for i in word {
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
  let input: Character = Character(readLine(!)!)
  return input
}
//checks if guess is right
func hasMatch(input: Character, word: String) -> Bool {
  for character in word.characters {
    if character == input {
      return true
    }
  }
  return false
}
//fixes '_' array
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character)  {
  //temp arr to modify
  newArr: [Character] = currentInProgressWord

  for i in 0..<actualWord.count {
    if guess == actualWord[i] {
      newArr[i] = guess
    }
  }
}

func printBadGuessMessage() {
  print("Wrong! There goes a body part! :(")
}

func hasWon(_ word: [String]) -> Bool

func printWinMessage() {
  print("Congratulations, you win!")
}

func printLooseMessage() {
  print("You lose... Better luck next time!")
}
