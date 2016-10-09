func readGuess() -> Character {
  print("Please enter a guess at a letter in the word below:")
  let guess = Character(readLine()!)
  return guess
}
