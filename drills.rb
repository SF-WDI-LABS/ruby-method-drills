#########################
#### USING ARGUMENTS ####
#########################

def say_hello
  "hello"
end

def echo(input)
  input
end

def get_fruit(id=0)
  ["apple", "pear"][id]
end

def how_many_args(*args)
  args.count
end

def find_answer(**kwargs)
  kwargs[:answer]
end

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

###########################
#### LOOPS & ITERATORS ####
###########################

def count_spaces(str)
  count = 0
  space = " "
  str.each_char do |char|
    if char == space
      count += 1
    end
  end
  count
end

def count_to(n)
  Array(0..n.abs)
end

def string_lengths(list)
  list.map {|str| str.length }
end

def remove_falsy_values(list)
  list.select { |item| !!item }
end

def exclude_last(sequence)
  sequence[0..-2]
end

def exclude_first(sequence)
  sequence[1..-1]
end

def exclude_ends(sequence)
  sequence[1..-2]
end

def select_every_even(list)
  list.select.with_index {|item, index| item if index.even? }
end

def select_every_odd(list)
  list.select.with_index {|item, index| item if index.odd? }
end

def select_every_n(list, interval=1)
  list.select.with_index {|item, index| item if index%interval == 0 }
end

##############################
#### MANIPULATING OBJECTS ####
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
