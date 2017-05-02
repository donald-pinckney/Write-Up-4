# Problem 1: Hangman Game!
In this problem, you will create a hangman game that works via command line.  It will interactively let the user guess letters.

## Game Rules
Hangman is a game where the computer chooses a word, and represents the letters in it with blanks.  Then, you can guess a letter, and the computer will tell you which letters match, if any.  If you guess a letter that doesn't match at all, then you loose one body part. If you loose all 6 body parts (head, torso, left arm, right arm, left leg, right leg), then you loose.

## Source of Words
An English list of words will be used. This is a (large) text file included in the folder here, called words. I've already written the code that reads this text file into a [String], one value in the array per word. The word is chosen randomly from this list of words.

## Example of what your interactive input / output might look like

This is an example of what your code should roughly do.  You do not need to use the exact same phrasing as I do (there is no testing script), but you should strive to make it have the same features.

In the example below, the only thing the user types in, which is not actual output is the letter to guess (and then enter).

Example:
```
Current word: _ _ _ _ _ _ _
Already guessed letters: []
Remaining body parts: 6
Type a letter to guess: l

Current word: _ _ _ l _ _ _
Already guessed letters: [l]
Remaining body parts: 6
Type a letter to guess: r
Wrong! There goes a body part! :(

Current word: _ _ _ l _ _ _
Already guessed letters: [l, r]
Remaining body parts: 5
Type a letter to guess: a

Current word: _ a _ l _ a _
Already guessed letters: [l, r, a]
Remaining body parts: 5
Type a letter to guess: m

Current word: m a _ l m a _
Already guessed letters: [l, r, a, m]
Remaining body parts: 5
Type a letter to guess: i

Current word: m a i l m a _
Already guessed letters: [l, r, a, m, i]
Remaining body parts: 5
Type a letter to guess: n

Current word: m a i l m a n
Already guessed letters: [l, r, a, m, i, n]
Remaining body parts: 5
Congratulations, you win!
```

## Rules for Writing the Homework
Rule #1: You can not modify main.swift

## Testing
There is no testing files or data for this. You have creative license to make the game look how you want, as long as you color inside the lines of main.swift. However, **PLEASE TEST YOUR CODE MANUALLY TO MAKE SURE IT ACTUALLY WORKS!**
