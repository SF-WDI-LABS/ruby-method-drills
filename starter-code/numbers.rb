##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(num)
	num > 0 ? (0..num).to_a : 0.downto(num).to_a
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(num)
	if num.is_a? Integer
		true
	elsif num.is_a? Float
		if num.nan?
			false
		elsif num  == num.floor
			true
		else
			false
		end
	else
		false
	end
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(num)
	return false if (num < 1 || num.class == Float)
	(2...num).each { |n| return false if num % n == 0 }
	true
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than(num)
	output = []
	(2...num).each do |n|
		output << n if is_prime?(n)
	end
	output
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(num)
	if num < 0 || !(is_integer?(num))
		Float::NAN
	elsif num == (0 || 1)
		1
	else
		num.downto(1).reduce(:*)
	end
end
