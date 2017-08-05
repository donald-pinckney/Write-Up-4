func hasMatch(ofGuess: Character, inWord: [Character]) -> Bool{
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
	var match: [Character] = []
	for x in 0..<currentInProgressWord.count{
		if actualWord[x] == guess{
			match.append(guess)
		}
		else{
			match.append(inProgressWord[x])
		}
	}
	return match
}

func hasWon(_ check: [Character]) -> Bool{
	if check == randomWord{
		return true
	}
	else{
		return false
	}
}
