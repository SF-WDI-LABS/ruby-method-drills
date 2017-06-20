##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count(str)
	hash = {}
	str.downcase.split("").each { |ch|
			hash[ch] ? hash[ch] += 1 : hash[ch] = 1
	}
	hash
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
def word_count(str)
	hash = {}
	str.downcase.split(' ').each do |word|
		word.gsub!(/[^abcdefghijklmnopqrstuvwxyz]/, '')
		hash[word] ? hash[word] += 1 : hash[word] = 1
	end
	hash
end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
def most_frequent_word(str)
	hash = word_count(str)
	most_frequent = str.split(" ").first
	hash.each do |k, v|
		if v > hash[most_frequent]
			most_frequent = v
		end 
	end
	most_frequent
end