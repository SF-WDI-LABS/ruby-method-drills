# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/3_iterator_spec.rb`

# require "./solutions/iterators.rb"   # use this line to see passing tests
require "./drills.rb"              # use this line to test your code


###########################
#### LOOPS & ITERATORS ####
###########################

describe "#count_spaces" do
  it "counts the spaces in a given string" do
    space = "\s"
    tab = "\t"
    expect( count_spaces(space*1) ).to eq 1
    expect( count_spaces(tab+space*10+tab) ).to eq 10
    expect( count_spaces("") ).to eq 0
    expect( count_spaces(" | | ") ).to eq 3
  end
end

describe "#string_lengths" do
  it "converts a given list of strings to a list of string lengths" do
    expect( string_lengths(["abc"]) ).to eq [3]
    expect( string_lengths([""]) ).to eq [0]
    expect( string_lengths(["abc", "a", "123456"]) ).to eq [3, 1, 6]
  end
end

describe "#remove_falsy_values" do
  it "filters out falsy values from the input array" do
    expect( remove_falsy_values(["hi"]) ).to eq ["hi"]
    expect( remove_falsy_values([]) ).to eq []
    expect( remove_falsy_values([nil]) ).to eq []
    expect( remove_falsy_values([false]) ).to eq []
    expect( remove_falsy_values([10,"hi"]) ).to eq [10,"hi"]
    expect( remove_falsy_values([0, "", nil, false, -1]) ).to eq [0,"",-1]
  end
end

describe "#exclude_last" do
  it "removes the last item from an input array" do
    expect( exclude_last([1,2,3]) ).to eq [1,2]
    expect( exclude_last([1,2]) ).to eq [1]
    expect( exclude_last([1]) ).to eq []
  end

  it "removes the last item from an input string" do
    expect( exclude_last("123") ).to eq "12"
    expect( exclude_last("12") ).to eq "1"
    expect( exclude_last("1") ).to eq ""
  end
end

describe "#exclude_first" do
  it "removes the first item from an input array" do
    expect( exclude_first([1,2,3]) ).to eq [2,3]
    expect( exclude_first([1,2]) ).to eq [2]
    expect( exclude_first([1]) ).to eq []
  end

  it "removes the first character from an input string" do
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
  it "removes the first and last items from an input array" do
    expect( exclude_ends([1,2,3]) ).to eq [2]
    expect( exclude_ends([1,2]) ).to eq []
  end

  it "removes the first and last characters from an input string" do
    expect( exclude_ends("123") ).to eq "2"
    expect( exclude_ends("12") ).to eq ""
  end
end

describe "#select_every_even" do
  it "returns an array of even-indexed items from the input array" do
    expect( select_every_even([0,1,2]) ).to eq [0,2]
    expect( select_every_even(["a","b","c","d","e"]) ).to eq ["a","c","e"]
  end
end

describe "#select_every_odd" do
  it "returns an array of odd-indexed items from the input array" do
    expect( select_every_odd([0,1,2]) ).to eq [1]
    expect( select_every_odd(["a","b","c","d","e"]) ).to eq ["b","d"]
  end
end

describe "#select_every_n" do
  it "returns an array of items at an index evenly divisible by n, from the input array" do
    expect( select_every_n(["a","b","c","d","e"], 3) ).to eq ["a","d"]
    expect( select_every_n(["a","b","c","d","e"], 4) ).to eq ["a","e"]
  end

  it "defaults to an n value of 1" do
    expect( select_every_n([0,1,2]) ).to eq [0,1,2]
  end
end
