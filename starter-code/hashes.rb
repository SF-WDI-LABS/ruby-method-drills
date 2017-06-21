##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count string
  count = {}
  norm = string.downcase
  norm.each_char do |i|
    if count[i].nil?
      count[i] = 1
    else
      count[i] += 1
    end
  end
  count
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
