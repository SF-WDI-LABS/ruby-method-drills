# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/string_spec.rb`

# require "./solutions/strings.rb"   # use this line to see passing tests
require "./starter-code/strings.rb"              # use this line to test your code

##############################
#### MANIPULATING STRINGS ####
##############################

describe "#first_char" do
  it "returns the first letter of the word" do
    expect( first_char("alex") ).to eq "a"
    expect( first_char("bedford") ).to eq "b"
  end

  it "lowercases the first letter of the word" do
    expect( first_char("Ben") ).to eq "b"
    expect( first_char("Brianna") ).to eq "b"
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
  it "replaces periods with ' STOP'" do
    expect( to_telegram("hello.") ).to eq "hello STOP"
    expect( to_telegram("Hello. It's me.") ).to eq "Hello STOP It's me STOP"
  end
end

describe "#spell_out" do
  it "returns the input string, with characters seperated by dashes" do
    expect( spell_out("h") ).to eq "h"
    expect( spell_out("hey") ).to eq "h-e-y"
    expect( spell_out("hello") ).to eq "h-e-l-l-o"
  end

  it "converts the string to lowercase" do
    expect( spell_out("HEY") ).to eq "h-e-y"
    expect( spell_out("Hello") ).to eq "h-e-l-l-o"
  end
end

describe "#seperate" do
  it "seperates characters with a custom seperator, when supplied with one" do
    expect( seperate("hey", "*") ).to eq "h*e*y"
    expect( seperate("hey", "?") ).to eq "h?e?y"
    expect( seperate("hey", "+") ).to eq "h+e+y"
  end

  it "seperates characters with dashes (by default)" do
    expect( seperate("h") ).to eq "h"
    expect( seperate("hey") ).to eq "h-e-y"
  end
end

describe "#palindrome_word?" do
  it "determines whether a single word is a palindrome" do
    expect( palindrome_word?("a") ).to eq true
    expect( palindrome_word?("aa") ).to eq true
    expect( palindrome_word?("aaa") ).to eq true
    expect( palindrome_word?("ab") ).to eq false
  end

  it "ignores case" do
    expect( palindrome_word?("aA") ).to eq true
    expect( palindrome_word?("aAA") ).to eq true
  end
end

describe "#palindrome_sentence?" do
  it "determines whether a sentence is a palindrome" do
    expect( palindrome_sentence?("a a") ).to eq true
    expect( palindrome_sentence?("ab ba") ).to eq true
    expect( palindrome_sentence?("a sentence") ).to eq false
  end

  it "ignores case" do
    expect( palindrome_sentence?("a A") ).to eq true
    expect( palindrome_sentence?("aB bA") ).to eq true
  end

  it "ignores whitespace" do
    expect( palindrome_sentence?("abb a") ).to eq true
    expect( palindrome_sentence?("a bba") ).to eq true
  end

  it "ignores punctuation" do
    expect( palindrome_sentence?("A man, a plan, a canal: Panama!") ).to eq true
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
