#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

#echo
  # returns the input string

#get_fruit
  # returns the fruit that corresponds to the given id
  # does not raise an error when the id argument is missing
  # defaults to 'apple' when no id argument is supplied

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the word
  # lowercases the first letter of the word

#polly_wanna
  # echoes the original word
  # repeats the original word 3 times

#count_chars
  # returns the number of characters in a string

#yell
  # convert the message to uppercase
  # adds an exclamation point to the end of the message

#to_telegram
  # replaces periods with ' STOP'

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the string to lowercase

#seperate
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)

#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case

#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a string

#string_lengths
  # converts a list of strings to a list of string lengths

#remove_falsy_values
  # filters out falsy values from a list

#exclude_last
  # removes the last item from an array
  # removes the last item from a string

#exclude_first
  # removes the first item from an array
  # removes the first character from a string
  # does not alter the original input (non-destructive)

#exclude_ends
  # removes the first and last items from an array
  # removes the first and last characters from a string

#select_every_even
  # returns a list of even-indexed items

#select_every_odd
  # returns a list of odd-indexed items

#select_every_n
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1



##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to n
  # rounds off decimals

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in a string that appears with the most frequency
