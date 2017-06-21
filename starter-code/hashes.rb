##############################
#### MANIPULATING HASHES ####
##############################
#character_count
def character_count word
  out = Hash.new(0)
  word.downcase.each_char{|c| out[c] += 1}
  out
end
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

## STRETCH ##
#word_count
def word_count string
  count = Hash.new(0)
  words = string.downcase.split(" ")
  words.each {|word| count[word.gsub(/[^a-z]/i, "")] += 1}
  count
end
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
def most_frequent_word string
  count_hash = word_count(string)
  count_hash.key(count_hash.values.max)
end
  # takes in a string
  # finds the word in a string that appears with the most frequency
