# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/1_argument_spec.rb`

# require "./solutions/arguments.rb"   # use this line to see passing tests
require "./drills.rb"              # use this line to test your code


#########################
#### USING ARGUMENTS ####
#########################

describe "#say_hello" do
  it "returns 'hello'" do
    expect( say_hello ).to eq "hello"
  end
end

describe "#echo" do
  it "echoes the input string" do
    expect( echo("hi") ).to eq "hi"
    expect( echo("hey") ).to eq "hey"
  end
end

describe "#get_fruit" do
  it "returns the fruit that corresponds to the given id" do
    expect( get_fruit(0) ).to eq "apple"
    expect( get_fruit(1) ).to eq "pear"
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
