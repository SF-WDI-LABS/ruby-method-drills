##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
def first_char str
  str.downcase.chr
end

#polly_wanna
def polly_wanna wd
  wd.concat(wd*3)
end

#count_chars
def count_chars wd
  wd.length
end

#yell
def yell msg
  msg.upcase.concat(33)
end


## STRETCH ##
#to_telegram
def to_telegram msg
  msg.gsub(/([.])/, ' STOP')
end

#spell_out
def spell_out str
  str.downcase.scan(/\w/).join("-")
end

#seperate
def seperate str, dash="-"
  str.downcase.scan(/\w/).join(dash)
end

## STRETCH ##
#palindrome_word?
def palindrome_word? wd
  wd.downcase == wd.downcase.reverse
end

## SUPER STRETCH ##
#palindrome_sentence?
def palindrome_sentence? str
  new_str = str.downcase.scan(/\w/).join()
  new_str == new_str.reverse
end

#is_vowel
def is_vowel ltr
  ltr =~ /^[aeiou]/i ?  true : false
end


#add_period
def add_period str
  str[-1] =~ /[.!?]/ ? str : str << "."
end

p add_period("Does this work?")
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
