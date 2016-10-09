func hasmatch(ofGuess: Int, inWord: [Character]) -> Bool{
	var word = false
	for x in inWord{
		if ofGuess == x{
			word = true
			break
	}
	}
	return word
}

func update(currentInProgressWord: [Character], actualWord: [Character], guess: Character) -> [Character]{
	var match = []
	for x in 0..<currentInProgressWord.count{
		if actualword[x] == guess{
			match.append(guess)
		}
		else{
			match.append(_)
		}
	}	
	return match	
}

func hasWon(check: [Character]){
	if check == randomWord{
		return true
	}
	else{
		return false
	}
}