##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count (str)
  count = {}
  str.each_char do |character|
    character = character.downcase
    if count[character].nil?
      count[character] = 1
    else
      count[character] += 1
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

  def word_count(str)
    count = {}
    str.split(' ').each do |word|
      word = word.downcase.gsub(/[^a-z]/, '')
      if count[word].nil?
        count[word] = 1
      else
        count[word] += 1
      end
    end
    count
  end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
