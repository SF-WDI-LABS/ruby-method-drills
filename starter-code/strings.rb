##############################
#### MANIPULATING STRINGS ####
##############################
# first_char
#   takes in a word
#   returns the first letter of the word
#   lowercases the first letter of the word

def first_char word
  word.chr.downcase
end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated

def polly_wanna word2
  word2*3
end

#count_chars
  # takes in a word
  # returns the number of characters in the word

def count_chars word3
  word3.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

def yell word4
  word4.upcase + "!"
end

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message

def to_telegram word5
  word5.gsub! '.', ' STOP'
end

#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes

def spell_out word6
  word6.downcase.split("").join("-")
end

#separate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

def separate word7, separator="-"
  word7.split("").join(separator)
end

## STRETCH ##
#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false

def palindrome_word? word8
  word8.downcase == word8.downcase.reverse
end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

  def palindrome_sentence? string1
    asdf = string1.gsub(/[^a-z]/i, "").downcase
    asdf.reverse == asdf
  end

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

  def is_vowel char
    char.length = 1 && char.match(/[aeiou]/i) && char.is_a?(String)
  end


#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence

def add_period string2
  "!?.".include?(string2[-1]) ? string2 : string2 + "."
end
