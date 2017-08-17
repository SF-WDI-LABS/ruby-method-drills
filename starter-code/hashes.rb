##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

def character_count(stringthing)
  letter_count = {}
  last_char = nil
  char_one_two_three = 0
  stringthing.each_char do |char|
  char = char.downcase
    if char != last_char
      char_one_two_three = 1
    else
      char_one_two_three += 1
    end
    last_char = char
    letter_count[char] = char_one_two_three if (letter_count[char]||0) < char_one_two_three
  end
letter_count
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
