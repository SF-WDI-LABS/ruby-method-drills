##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
def count_to num
  a = Array.new
  if num > 0
    0.step(num.floor,1) { |i| a.push(i)}
  else
    0.step(num.ceil,-1) { |i| a.push(i)}
  end
  return a
end
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

#is_integer?
def is_integer? num
  num.class == Fixnum || num.class == Bignum || ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end

  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
def is_prime? num
  if num.is_a?(Float) || num <= 1
    false
  else
    ret = true
    2.step(num-1,1) { |i|
      # puts i
      # puts num % i === 0
      if num % i === 0
        ret = false
      end
    }
    ret
  end
end
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

#primes_less_than
def primes_less_than num
  a = []
  0.step(num-1,1) { |i|
    if is_prime?(i)
      a.push(i)
    end
  }
  a
end
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

## STRETCH ##
#iterative_factorial
def iterative_factorial num
  if num == 0 || num === 1
    1
  elsif num < 0 || num.is_a?(Float)
    Float::NAN
  else
    ret = 1
    num.step(1,-1) { |i|
      ret = ret * i
    }
    ret
  end
end
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
