// This function prompts a user to input a letter and gives that letter as a character as output

func readGuess() -> Character {
  print("Please enter a guess at a letter in the word below:")
  let guess = Character(readLine()!)
  return guess
}
