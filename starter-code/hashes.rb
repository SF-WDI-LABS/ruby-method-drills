##############################
#### MANIPULATING HASHES ####
##############################
#character_count
def character_count string
  char_count = {}
  string.each_char do |char|
    char = char.downcase
    if char_count[char].nil?
      char_count[char] = 1
    else
      char_count[char] += 1
    end
  end
  char_count
end
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

## STRETCH ##
#word_count
def word_count string
  word_counts = {}
  string.split(" ").each do |word|
    word = word.downcase.gsub(/[^a-z]/i, "")
    if word_counts[word].nil?
      word_counts[word] = 1
    else
      word_counts[word] += 1
    end
  end
  word_counts
end
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
def most_frequent_word string
  word_count = word_count string
  word_count.empty? ? nil : word_count.invert.max[1]
end
  # takes in a string
  # finds the word in a string that appears with the most frequency
