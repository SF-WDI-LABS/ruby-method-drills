# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/drills_spec.rb`

require "./drills.rb"

#########################
#### USING ARGUMENTS ####
#########################

describe "#get_fruit" do
  it "returns the fruit that corresponds to the given id" do
    expect( get_fruit(1) ).to eq "apple"
    expect( get_fruit(2) ).to eq "pear"
  end

  it "does not raise an error when the id argument is missing" do
    expect { get_fruit }.not_to raise_error
  end

  it "defaults to 'apple' when no id argument is supplied" do
    expect( get_fruit ).to eq "apple"
  end
end

describe "#how_many_args" do
  it "accepts any number of arguments without complaint" do
    expect { how_many_args(1) }.not_to raise_error
    expect { how_many_args(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1) }.not_to raise_error
  end

  it "returns the total number of arguments passed to the function" do
    expect( how_many_args(1) ).to eq 1
    expect( how_many_args(1,1,1) ).to eq 3
    expect( how_many_args("",{},4,nil) ).to eq 4
  end
end

describe "#find_answer" do
  it "returns the value associated with the 'answer' keyword argument" do
    expect( find_answer(answer: "yes") ).to eq "yes"
    expect( find_answer(fish: 10, answer: "yay") ).to eq "yay"
  end

  it "returns nil if it cannot find the 'answer' keyword argument" do
    expect( find_answer() ).to eq nil
  end

  it "complains when given non-keyword arguments" do
    expect { find_answer("bad input") }.to raise_error
  end
end

##############################
#### MANIPULATING STRINGS ####
##############################

describe "#say_hello" do
  it "returns 'hello'" do
    expect( say_hello ).to eq "hello"
  end
end

describe "#first_char" do
  it "returns the first letter of the word" do
    expect( first_char("ilias") ).to eq "i"
    expect( first_char("justin") ).to eq "j"
    expect( first_char("nathan") ).to eq "n"
  end

  it "lowercases the first letter of the word" do
    expect( first_char("Ilias") ).to eq "i"
    expect( first_char("Justin") ).to eq "j"
    expect( first_char("Nathan") ).to eq "n"
  end
end

describe "#polly_wanna" do
  it "echoes the original word" do
    expect( polly_wanna("donut") ).to match /donut/i
    expect( polly_wanna("cracker") ).to match /cracker/i
  end

  it "repeats the original word 3 times" do
    expect( polly_wanna("donut") ).to match /(donut){3}/i
    expect( polly_wanna("cracker") ).to match /(cracker){3}/i
  end
end

describe "#count_chars" do
  it "returns the number of characters in a string" do
    expect( count_chars("123") ).to eq 3
    expect( count_chars("123456789") ).to eq 9
  end
end

describe "#yell" do
  it "convert the message to uppercase" do
    expect( yell("boo") ).to start_with("BOO")
  end

  it "adds an exclamation point to the end of the message" do
    expect( yell("boo") ).to end_with("!")
    expect( yell("boo") ).to eq "BOO!"
  end
end

describe "#to_telegram" do
  it "replaces periods with the word 'STOP'" do
    expect( to_telegram("hello.") ).to eq "hello STOP"
    expect( to_telegram("Hello. It's me.") ).to eq "Hello STOP It's me STOP"
  end
end

describe "#spell_out" do
  it "returns the input string, with characters seperated by dashes" do
    expect( whisper("h") ).to eq "h"
    expect( whisper("hey") ).to eq "h-e-y"
    expect( whisper("hello") ).to eq "h-e-l-l-o"
  end

  it "converts the string to lowercase" do
    expect( whisper("HEY") ).to eq "h-e-y"
    expect( whisper("Hello") ).to eq "h-e-l-l-o"
  end
end

describe "#seperate" do
  it "seperates characters with a custom seperator, when supplied with one" do
    expect( whisper("hey", "*") ).to eq "h*e*y"
    expect( whisper("hey", "?") ).to eq "h?e?y"
    expect( whisper("hey", "+") ).to eq "h+e+y"
  end

  it "seperates characters with dashes (by default)" do
    expect( whisper("h") ).to eq "h"
    expect( whisper("hey") ).to eq "h-e-y"
  end
end

describe "#croon" do
  it "seperates word characters with dashes" do
    expect( whisper("a") ).to eq "a"
    expect( whisper("hey") ).to eq "h-e-y"
    expect( whisper("hello") ).to eq "h-e-l-l-o"
  end

  it "preserves whitespace between words" do
    expect( whisper("to be") ).to eq "t-o b-e"
    expect( whisper("or not") ).to eq "o-r n-o-t"
  end

  it "preserves punctuation around words" do
    expect( whisper("to be, or not") ).to eq "t-o b-e, o-r n-o-t"
    expect( whisper("to be: that is") ).to eq "t-o b-e: t-h-a-t i-s"
    expect( whisper("the question. Whither") ).to eq "t-h-e q-u-e-s-t-i-o-n. W-h-i-t-h-e-r"
  end
end

describe "#palindrome_word?" do
  it "determines whether a single word is a palindrome" do
    expect( palindrome_word("a") ).to eq true
    expect( palindrome_word("aa") ).to eq true
    expect( palindrome_word("aaa") ).to eq true
    expect( palindrome_word("ab") ).to eq false
  end

  it "ignores case" do
    expect( palindrome_word("aA") ).to eq true
    expect( palindrome_word("aAA") ).to eq true
  end
end

describe "#palindrome_sentence?" do
  it "determines whether a sentence is a palindrome" do
    expect( palindrome_sentence("a a") ).to eq true
    expect( palindrome_sentence("ab ba") ).to eq true
    expect( palindrome_sentence("a sentence") ).to eq false
  end

  it "ignores case" do
    expect( palindrome_sentence("a A") ).to eq true
    expect( palindrome_sentence("aB bA") ).to eq true
  end

  it "ignores whitespace" do
    expect( palindrome_sentence("abb a") ).to eq true
    expect( palindrome_sentence("a bba") ).to eq true
  end

  it "ignores punctuation" do
    expect( palindrome_sentence("A man, a plan, a canal: Panama!") ).to eq true
  end
end

describe "#is_vowel" do
  it "determines whether a given character is a vowel" do
    "aeiou".each_char do |vowel|
      expect( is_vowel(vowel) ).to be true
    end

    "wxyz123".each_char do |char|
      expect( is_vowel(char) ).to be false
    end
  end

  it "ignores case" do
    "AEIOU".each_char do |vowel|
      expect( is_vowel(vowel) ).to be true
    end
  end

  it "handles weird inputs gracefully" do
    [9, {}, [], :hello, "xyz"].each do |item|
      expect { is_vowel(item) }.not_to raise_error
      expect( is_vowel(item) ).to be false
    end
  end
end

describe "#add_period" do
  it "adds a period to the end of the sentence" do
    expect( add_period("Hello") ).to eq "Hello."
  end

  it "does not add a period if one is already there" do
    expect( add_period("Hi.") ).not_to eq "Hi.."
  end

  it "does not add a period if any form of terminal punctuation is present" do
    expect( add_period("Hi.") ).to eq "Hi."
    expect( add_period("Hi!") ).to eq "Hi!"
    expect( add_period("Hi?") ).to eq "Hi?"
  end
end

###############
#### LOOPS ####
###############

describe "#count_spaces" do
  it "counts the spaces in a string" do
    space = " "
    expect( count_spaces(space*1) ).to eq 1
    expect( count_spaces(space*2) ).to eq 2
    expect( count_spaces(space*10) ).to eq 10
    expect( count_spaces("") ).to eq 0
    expect( count_spaces(" | | ") ).to eq 3
  end
end

describe "#count_to" do
  it "returns a list of every interger from 0 to n" do
    expect( count_to(0) ).to eq [0]
    expect( count_to(2) ).to eq [0,1,2]
    expect( count_to(3) ).to eq [0,1,2,3]
  end

  it "uses the absolute value of n" do
    expect( count_to(-3) ).to eq [0,1,2,3]
  end

  it "rounds down" do
    expect( count_to(3.9) ).to eq [0,1,2,3]
  end
end

describe "#string_lengths" do
  it "converts a list of strings to a list of string lengths" do
    expect( string_lengths(["abc"]) ).to eq [3]
    expect( string_lengths([""]) ).to eq [0]
    expect( string_lengths(["abc", "a", "123456"]) ).to eq [3, 1, 6]
  end
end

describe "#remove_falsy_values" do
  it "filters out falsy values from a list" do
    expect( remove_falsy_values(["hi"]) ).to eq ["hi"]
    expect( remove_falsy_values([]) ).to eq []
    expect( remove_falsy_values([nil]) ).to eq []
    expect( remove_falsy_values([false]) ).to eq []
    expect( remove_falsy_values([10,"hi"]) ).to eq [10,"hi"]
    expect( remove_falsy_values([0, "", nil, false, -1]) ).to eq [0,"",-1]
  end

  it "does not alter the original list (non-destructive)" do
    original_list = [nil, nil, nil]
    remove_falsy_values(original_list)
    expect( original_list.length ).to eq 3
  end
end

#############################
#### MANIPULATING ARRAYS ####
#############################

describe "#exclude_last" do
  it "removes the last item from an array" do
    expect( exclude_last([1,2,3]) ).to eq [1,2]
    expect( exclude_last([1,2]) ).to eq [1]
    expect( exclude_last([1]) ).to eq []
  end

  it "removes the last item from a string" do
    expect( exclude_last("123") ).to eq "12"
    expect( exclude_last("12") ).to eq "1"
    expect( exclude_last("1") ).to eq ""
  end

  it "does not alter the original input (non-destructive)" do
    input_array = [1,2,3]
    exclude_last(input_array)
    expect( input_array.length ).to eq 3

    input_string = "123"
    exclude_last(input_string)
    expect( input_string.length ).to eq 3
  end
end

describe "#exclude_first" do
  it "removes the first item from an array" do
    expect( exclude_first([1,2,3]) ).to eq [2,3]
    expect( exclude_first([1,2]) ).to eq [2]
    expect( exclude_first([1]) ).to eq []
  end

  it "removes the first character from a string" do
    expect( exclude_first("123") ).to eq "23"
    expect( exclude_first("12") ).to eq "2"
    expect( exclude_first("1") ).to eq ""
  end

  it "does not alter the original input (non-destructive)" do
    input_array = [1,2,3]
    exclude_first(input_array)
    expect( input_array.length ).to eq 3

    input_string = "123"
    exclude_first(input_string)
    expect( input_string.length ).to eq 3
  end
end

describe "#exclude_ends" do
  it "removes the first and last items from an array" do
    expect( exclude_ends([1,2,3]) ).to eq [2]
    expect( exclude_ends([1,2]) ).to eq []
  end

  it "removes the first and last characters from a string" do
    expect( exclude_ends("123") ).to eq "2"
    expect( exclude_ends("12") ).to eq ""
  end

  it "does not alter the original input (non-destructive)" do
    input_array = [1,2,3]
    exclude_ends(input_array)
    expect( input_array.length ).to eq 3

    input_string = "123"
    exclude_ends(input_string)
    expect( input_string.length ).to eq 3
  end
end

describe "#exclude_ends!" do
  it "removes the first and last items from an array" do
    expect( exclude_ends([1,2,3]) ).to eq [2]
    expect( exclude_ends([1,2]) ).to eq []
  end

  it "removes the first and last characters from a string" do
    expect( exclude_ends("123") ).to eq "2"
    expect( exclude_ends("12") ).to eq ""
  end

  it "alters the original input (destructive)" do
    input_array = [1,2,3]
    exclude_ends(input_array)
    expect( input_array.length ).to eq 1

    input_string = "123"
    exclude_ends(input_string)
    expect( input_string.length ).to eq 1
  end
end

##############################
#### MANIPULATING OBJECTS ####
##############################

describe "#character_count" do
  it "counts how many times each character appears in a string" do
    expect( character_count("a") ).to eq({a: 1})
    expect( character_count("aaa") ).to eq({a: 3})
    expect( character_count("aaabbb") ).to eq({a: 3, b: 333})
  end

  it "ignores case" do
    expect( character_count("A") ).to eq({a: 1})
    expect( character_count("aAa") ).to eq({a: 3})
    expect( character_count("aaAbbB") ).to eq({a: 3, b: 333})
  end
end

describe "#word_count" do
  it "counts how many times a word appears in a string" do
    expect( word_count("hi") ).to eq({hi: 1})
    expect( word_count("hi hi") ).to eq({hi: 2})
    expect( word_count("hi hi hello") ).to eq({hi: 2, hello: 1})
  end

  it "ignores case" do
    expect( word_count("Hi") ).to eq({hi: 1})
    expect( word_count("hi HI") ).to eq({hi: 2})
    expect( word_count("HI hi Hello") ).to eq({hi: 2, hello: 1})
  end

  it "ignores characters that are not in the sequence a-z" do
    expect( word_count("Hi!") ).to eq({hi: 1})
    expect( word_count("hi, HI.") ).to eq({hi: 2})
    expect( word_count("HI-hi-Hello!") ).to eq({hi: 2, hello: 1})
    expect( word_count("HI_hi_Hello123") ).to eq({hi: 2, hello: 1})
  end
end

describe "#most_frequent_word" do
  it "finds the word that appears with the most frequency" do
    expect( most_frequent_word("you") ).to eq "you"
    expect( most_frequent_word("you be you") ).to eq "you"
    expect( most_frequent_word("be be be you be you") ).to eq "be"
  end
end
