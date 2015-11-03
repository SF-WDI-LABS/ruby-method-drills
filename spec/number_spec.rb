# THIS FILE PERFORMS RSPEC TESTS ON `drills.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/number_spec.rb`

require "./drills.rb"

#######################
#### USING NUMBERS ####
#######################

describe "#is_prime?" do
  it "returns false for 1" do
    expect( is_prime?(1) ).to eq false
  end

  it "returns false for numbers less than or equal to 0" do
  	expect( is_prime?(-1) ).to eq false
  	expect( is_prime?(0) ).to eq false
  end

  it "returns false for numbers divisible by anything but 1 and themselves" do
  	expect( is_prime?(6) ).to eq false
  	expect( is_prime?(9) ).to eq false
  end

  it "returns false for decimals" do
  	expect( is_prime(2.7) ).to eq false
  end

  it "returns true for prime numbers" do
  	expect( is_prime?(2) ).to eq false
  	expect( is_prime?(17) ).to eq false
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