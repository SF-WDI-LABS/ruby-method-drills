# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/argument_spec.rb`


# require "./solutions/arguments.rb"   # use this line to see passing tests
require "./starter-code/arguments.rb"              # use this line to test your code


#########################
#### USING ARGUMENTS ####
#########################

describe "#say_hello" do
  it "returns 'hello'" do
    expect( say_hello ).to eq "hello"
  end
end

describe "#echo" do
  it "returns the input string" do
    expect( echo("hi") ).to eq "hi"
    expect( echo("hey") ).to eq "hey"
  end
end

describe "#eddie_izzards_height" do
  it "calculates Eddie Izzards height in heels" do
    expect( eddie_izzards_height(heel_height=0) ).to eq 67
    expect( eddie_izzards_height(heel_height=4) ).to eq 71
  end

  it "defaults to a heel_height of 0 when no heel_height argument is explicitly provided" do
    expect { eddie_izzards_height() }.not_to raise_error
    expect( eddie_izzards_height ).to eq 67
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

  it "raises a TypeError when given non-keyword arguments" do
    expect { find_answer("bad input") }.to raise_error TypeError
  end
end
