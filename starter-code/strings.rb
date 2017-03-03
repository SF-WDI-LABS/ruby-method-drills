##############################
#### MANIPULATING STRINGS ####
##############################
def first_char(word) #takes in a word
  word[0].downcase # lowercases the first letter of the word
  #returns first letter of the word
end
def polly_wanna(word) #takes in a word
  word * 3  # echoes the original word
            # repeats the original word 3 times
            # returns a string with the word repeated
end

def count_chars(word)  # takes in a word
  word.length # returns the number of characters in the word
end

def yell(message) # takes in a message
  message.upcase + "!"  # convert the message to uppercase. Aadds an exclamation point to the end of the message. returns the message
end

def to_telegram(message)  # takes in a message
  message.gsub(/\./," STOP") # replaces periods with ' STOP'
  # returns the updated message
end

def spell_out(string)  # takes in a string
  lowercase_str = string.downcase # converts the string to lowercase
  lowercase_str.split("").join("-")
    # returns the input string, with characters seperated by dashes
end
def seperate(string, separator="-") # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  string.split("").join(separator) # returns the modified string
end

def croon(string)
  string.split(" ").map {|word| word.split("").join("-") }.join(" ")
  # seperates word characters with dashes
  # preserves whitespace between words
end

def palindrome_word?(word)
  # ignores case
  word.downcase.reverse == word.downcase
  # returns true or false if a word is a palindrome
end

## SUPER STRETCH ##
def palindrome_sentence?(string)
  converted_str = string.gsub(/[^a-z]/i, "").downcase
  converted_str.reverse == converted_str.downcase

  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
end

def is_vowel(char) # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully
  vowels = ["a", "e", "i", "o", "u"]
  char.is_a?(String) && vowels.include?(char.downcase)
end

def add_period(str)  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
  if str[-1] == "."
    return str
  elsif str[-1] == "!" || str[-1]  == "?"
    return str
  elsif str[-1] != "."
    str + "."
  end
end
