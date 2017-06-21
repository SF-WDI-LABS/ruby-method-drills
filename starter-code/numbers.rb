##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

  def count_to n
    n = n.to_i
    n >= 0 ? (0..n).to_a : 0.downto(n).to_a
  end

  def is_integer? n2
    n2.class == Fixnum || n2.class == Bignum || (n2.class == Float && !n2.nan? && n2.to_i == n2)
  end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

def is_prime? n3
  if !is_integer?(n3) || n3 <= 1
    false
  else
    (2..(n3-1)).each do |i|
      if n3 % i == 0
        return false
      end
    end
  true
  end
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

  def primes_less_than n4
    prhyme = []
    (2..(n4-1)).each do |i|
      if is_prime?(i)
          prhyme.push(i)
      end
    end
    return prhyme
  end
#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number


## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
