//TODO
func hasWon(_ inProgressWord: [Character]) -> Bool{
  var hasWon = false
  if randomWord == inProgressWord{
    hasWon = true
  }
  return hasWon
}
//Reading in guess, stopping you if you try to input a not character :/
func readGuess() -> Character{
  print("Guess a letter: ", terminator:"")
  let guess = readLine()! //readd Character(readLine()!) if it's too excessive
  var output: Character = "z"

    if type(of: guess) == Character.self{
      output = Character(guess)
    }else{
      print("Your input wasn't a character.") //the output will be "z"
    }
  return output
}


//TODO hasMatch(ofGuess: input, inWord: randomWord) if the guess matches any letter in the word
func hasMatch(ofGuess guess: Character, inWord randomWord: [Character]) -> Bool {
let randomWordArray = randomWord
var hasMatch = false
  for i in 0..<randomWordArray.count{
    if guess == randomWordArray[i]{ //guess SHOULD be a char added code, see readGuess?? if it matches randomwordarray hasMatch = true
      hasMatch = true
    }
  }
  return hasMatch
}


//TODO update(currentInProgressWord: inProgressWord, actualWord: randomWord, guess: input)
func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character]{
  let randomWordArray = randomWord
  var tempInProgressWord = currentInProgressWord
  for i in 0..<randomWordArray.count{
    if guess == randomWordArray[i]{ //guess SHOULD be a char?? if it matches randomwordarray it replaces
      tempInProgressWord[i] = guess
    }
  }
  return tempInProgressWord
}
