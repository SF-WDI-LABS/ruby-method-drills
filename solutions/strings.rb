##############################
#### MANIPULATING STRINGS ####
##############################


def first_char(str)
  str[0].downcase
end

def polly_wanna(word)
  word*3
end

def count_chars(str)
  str.length
end

def yell(str)
  str.upcase + "!"
end

def to_telegram(message)
  message.gsub(/\./, " STOP")
end

def spell_out(word)
  word.downcase.split("").join("-")
end

def seperate(word, seperator="-")
  word.downcase.split("").join(seperator)
end

def croon(lyric)
  lyric.split(" ").map {|word| word.split("").join("-") }.join(" ")
end

def palindrome_word?(word)
  normalized = word.downcase
  normalized.reverse == normalized
end

def palindrome_sentence?(sentence)
  normalized = sentence.gsub(/[^a-z]/i, "").downcase
  normalized.reverse == normalized
end

def is_vowel(char)
  char.is_a?(String) && !!char.match(/[aeiou]/i)
end

def terminal_punctuation?(word)
  word.end_with?(".")
end

def add_period(input)
  "!?.".include?(input[-1]) ? input : input + "."
end