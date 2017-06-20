##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
  def character_count(str)
  counts = {}
  str.downcase.each_char do |char|
    next if char == " "
    counts[char] = 0 unless counts.include?(char)
    counts[char] += 1
  end
  counts
end


## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
  def word_count(str)
    arr = str.downcase.split(' ')
    counts = {}
    arr.each{|x| x.match?(/[a-z]/) ? counts[x] = arr.count(x) : nil }
    counts
  end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
  def most_frequent_word(str)
    arr = str.downcase.split(' ')
    counts = {}
    arr.each{|x| counts[x] = arr.count(x) }
    counts.max_by{|k,v| v}[0]
  end
