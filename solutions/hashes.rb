##############################
#### MANIPULATING HASHES ####
##############################

def character_count(sentence)
  char_counts = {}
  sentence.each_char do |char|
    char = char.downcase
    if char_counts[char].nil?
      char_counts[char] = 1
    else
      char_counts[char] += 1
    end
  end
  char_counts
end

def word_count(sentence)
  word_counts = {}
  sentence.split(" ").each do |word|
    word = word.downcase.gsub(/[^a-z]/i, "")
    if word_counts[word].nil?
      word_counts[word] = 1
    else
      word_counts[word] += 1
    end
  end
  word_counts
end

def most_frequent_word(sentence)
  word_counts = word_count(sentence)
  word_counts.empty? ? nil : word_counts.invert.max[1]
end
