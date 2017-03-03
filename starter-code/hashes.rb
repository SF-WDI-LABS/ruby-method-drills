##############################
#### MANIPULATING HASHES ####
##############################
def character_count(str)  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
  count_hash = {}
  str.each_char do |char|
    char = char.downcase
    if count_hash[char].nil?
      count_hash[char] = 1
    else
      count_hash[char] += 1
    end
  end
  count_hash
end

## STRETCH ##
def word_count(str) # takes in a string
  word_counts = {}
  str.split(" ").each do |word|
    word = word.downcase.gsub(/[^a-z]/i, "")    # ignores case
  # ignores characters that are not in the sequence a-z
    if word_counts[word].nil?
      word_counts[word] = 1
    else
      word_counts[word] += 1         #increments if word appears in string more than once
    end

  end
  word_counts #hash with word count

end

## STRETCH ##
def most_frequent_word(str)  # takes in a string
  # finds the word in a string that appears with the most frequency
  word_counts = word_count(str)
  if word_counts.empty?
    return nil
  else
    word_counts.invert.max[1]  #invert the hash into an array, return word in str with most frequency
  end
end
