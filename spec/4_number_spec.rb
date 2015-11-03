# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/number_spec.rb`

# require "./solutions/numbers.rb"   # use this line to see passing tests
require "./drills.rb"              # use this line to test your code


##############################
#### MANIPULATING NUMBERS ####
##############################

describe "#count_to" do
  it "returns an array containing every integer from 0 to n" do
    expect( count_to(0) ).to eq [0]
    expect( count_to(2) ).to eq [0,1,2]
    expect( count_to(-3) ).to eq [0,-1,-2,-3]
  end

  it "rounds off decimals" do
    expect( count_to(2.8) ).to eq [0,1,2]
    expect( count_to(-2.8) ).to eq [0,-1,-2]
  end
end

describe "#is_integer?" do
  it "returns true for Fixnums and Bignums (whole number or 'integer' types)" do
    expect( is_integer?(-10) ).to eq true
    expect( is_integer?(0) ).to eq true
    expect( is_integer?(2345324235632363463456456346) ).to eq true
  end

  it "returns true for Floats (decimals) equal to integers" do
    # note: there are also a few other decimal types - BigDecimal and Rational, 
    # but we'll ignore them for now
    expect( is_integer?(4.0) ).to eq true
    expect( is_integer?(-6.000) ).to eq true
  end

  it "returns false for non-integer decimals" do
    expect( is_integer?(4.5) ).to eq false
  end

  it "returns false for Float::NAN" do
    expect( is_integer?(Float::NAN) ).to eq false
  end

  it "returns false for non-numbers" do
    expect( is_integer?("4") ).to eq false
    expect( is_integer?(nil) ).to eq false
  end
end

describe "#is_prime?" do
  it "returns false for non-integer decimals" do
    expect( is_prime?(2.7) ).to eq false
  end

  it "returns false for numbers less than or equal to 1" do
    expect( is_prime?(-1) ).to eq false
    expect( is_prime?(0) ).to eq false
  end

  it "returns false for numbers divisible by anything but 1 and themselves" do
  	expect( is_prime?(6) ).to eq false
  	expect( is_prime?(9) ).to eq false
  end

  it "returns true for prime numbers" do
  	expect( is_prime?(2) ).to eq true
  	expect( is_prime?(17) ).to eq true
  end
end

describe "#primes_less_than" do
  it "returns an empty array if there are no primes below num" do
    expect( primes_less_than(1) ).to eq []
    expect( primes_less_than(-100) ).to eq []
  end

  it "does not return the number itself" do
    expect( primes_less_than(2) ).to eq []
  end

  it "finds all primes less than the given number" do
    expect( primes_less_than(5) ).to eq [2, 3]
    expect( primes_less_than(12) ).to eq [2, 3, 5, 7, 11]
  end
end

describe "#iterative_factorial" do
  it "returns 1 for 0 and 1" do
    expect( iterative_factorial(0) ).to eq 1
    expect( iterative_factorial(1) ).to eq 1
  end

  it "returns NaN for numbers less than 0" do
    expect( iterative_factorial(-2).nan? ).to eq true
  end

  it "returns NaN for non-integers" do
    expect( iterative_factorial(6.6).nan? ).to eq true
  end

  it "calculates factorial" do
    expect( iterative_factorial(5) ).to eq 120
    expect( iterative_factorial(7) ).to eq 5040
  end
end