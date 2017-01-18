#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

#echo
  # echoes (returns) the input string

#get_fruit
  # returns the fruit that corresponds to the given id
  # does not raise an error when the id argument is missing
  # defaults to 'apple' when no id argument is supplied

#how_many_args
  # accepts any number of arguments without error
  # returns the total number of arguments passed to the function

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # raises an error when given non-keyword arguments

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the given word
  # lowercases the first letter of the given word

#polly_wanna
  # includes the given word in its return value
  # repeats the given word 3 times

#count_chars
  # returns the number of characters in the given string

#yell
  # convert the given message to uppercase
  # adds an exclamation point to the end of the given message

#to_telegram
  # replaces periods in the input string with ' STOP'

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the input string to lowercase

#seperate
  # seperates characters in the input string with a custom seperator, when supplied with one
  # seperates characters in the input string with dashes (by default)

#croon
  # seperates characters in each word of the input phrase with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single given word is a palindrome
  # ignores case

#palindrome_sentence?
  # determines whether a given sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # returns false for non-letter inputs

#add_period
  # adds a period to the end of the given sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a given string

#string_lengths
  # converts a given list of strings to a list of string lengths

#remove_falsy_values
  # filters out falsy values from the input array

#exclude_last
  # removes the last item from an input array
  # removes the last item from an input string

#exclude_first
  # removes the first item from an input array
  # removes the first character from an input string
  # does not alter the original input (non-destructive)

#exclude_ends
  # removes the first and last items from an input array
  # removes the first and last characters from an input string

#select_every_even
  # returns an array of even-indexed items from the input array

#select_every_odd
  # returns an array of odd-indexed items from the input array

#select_every_n
  # returns an array of items at an index evenly divisible by n, from the input array
  # defaults to an n value of 1



##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to the input n
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
  # calculates the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # returns a hash
  # counts how many times each character appears in the input string
  # ignores case

#word_count
  # returns a hash
  # counts how many times a word appears in the input string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in the input string that appears with the most frequency
