##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
#https://stackoverflow.com/questions/16124735/letter-count-in-a-sentence-using-ruby
  def character_count character
    character.downcase.scan(/\w/i).inject(Hash.new(0)){|h, c| h[c] += 1; h}
  end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

  #https://stackoverflow.com/questions/9480852/array-to-hash-words-count
  def word_count word
    word.downcase.split.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
