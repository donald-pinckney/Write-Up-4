//TODO How to print w/ no brackets, commas
//print current word
func printInProgressWord(_ inProgressWord: [Character]){
  print("Your current word: ", terminator:"")
  for letter in inProgressWord {
    print(letter, terminator:" ")
  }
  print("")
}
//printing already guessed letters
func printAlreadyGuessedLetters(_ guessedLetters: [Character]){
  print("You have guessed: ", terminator:"")
  for letter in guessedLetters {
    print(letter, terminator:", ")
  }
  print("")
}
//Printing remaining body parts
func printRemainingBodyParts(_ bodyParts: Int){
  if bodyParts == 1{
    print("You only have 1 appendage left!!! Choose wisely!")
  }else{
    print("You have \(bodyParts) body parts left!!!")
  }
}

//Without Variables
func printBadGuessMessage(){
  if bodyParts != 0 { //This is just so it doesn't tell you to pick again if you lose
    print("Whoops, try a different letter!")
  }
}
func printLoseMessage(){
  print("You let the man die! How could you!") //r.i.p. hangman 2016-2016
}
func printWinMessage(){
  print("Great job!! The word was ", terminator:"")
  for letter in randomWord{ //print randomword properly because it's an array y'know
    print(letter, terminator:"")
  }
  print("") //to make new line
}
