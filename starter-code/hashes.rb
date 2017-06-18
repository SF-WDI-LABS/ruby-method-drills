##############################
#### MANIPULATING HASHES ####
##############################
#character_count
def character_count str
  freqs = Hash.new(0)
  str.downcase.each_char { |ltr| freqs[ltr] += 1 }
  freqs
end

## STRETCH ##
#word_count
def word_count str
  str = str.gsub(/[^a-zA-Z ]/, '')
  wds = str.split(' ')
  freqs = Hash.new(0)
  wds.each { |wd| freqs[wd.downcase] += 1 }
  freqs
end


## STRETCH ##
#most_frequent_word
def most_frequent_word str
  str = str.gsub(/[^a-zA-Z ]/, '')
  wds = str.split(' ')
  wds.group_by {|i| i}.max_by {|k, v| v.count }[0]
end


  # takes in a string
  # finds the word in a string that appears with the most frequency
