// This function prompts a user to input a letter and gives that letter as a character as output

func readGuess() -> Character {
  print("Please enter a guess at a letter in the word below:")
  let guess = String(readLine()!)!
  if guess.characters.count == 1 {
    return Character(guess)
  }
  else {
    print("Please try again")
    return readGuess()
  }
}
