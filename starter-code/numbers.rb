##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
  def count_to(num)
    arr = []
    num = num.to_int
    num > 0 ? 0.upto(num){|i| arr.push(i)} : 0.upto(-num){|i| arr.push(-i)}
    return arr
  end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
  def is_integer?(num)
    num.class == Fixnum || num.class == Bignum ||
      ( num.is_a?(Float) && !num.nan? && num.to_i == num )
  end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
  def is_prime?(n)
  foundDivider = false
  if(n <= 1 || !(n.is_a?(Integer)))
    foundDivider
  else
   for d in 2..(n - 1)
    foundDivider = ((n % d) == 0) || foundDivider
   end
  not foundDivider
  end
 end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
  def primes_less_than(num)
    require 'prime'
    arr = []
    Prime.each(num) do |prime| arr.push(prime)
    end
    num.prime? ? arr.pop : arr
    return arr
  end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
  def iterative_factorial(n)
  if (n == 0 || n == 1)
    1
  elsif (n < 0 || !(n.is_a?(Integer)))
    Float::NAN
  else
    n * iterative_factorial(n-1)
  end
end
