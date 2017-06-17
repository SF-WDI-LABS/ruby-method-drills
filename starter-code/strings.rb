##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
def first_char word
  word[0].downcase
end
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word

#polly_wanna
def polly_wanna word
  p word
  p word * 3
  return str = word * 3
end
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated

#count_chars
def count_chars word
  word.length
end
  # takes in a word
  # returns the number of characters in the word

#yell
def yell msg
  msg.upcase + '!'
end
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message


#spell_out
def spell_out str
  str.downcase.split(//).join('-')
end
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes


#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

## STRETCH ##
#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
