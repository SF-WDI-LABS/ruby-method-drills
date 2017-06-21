##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
  def count_to number
    new_num = 0
    i = 0
    new_arr = [0]
    if number < 0
      while i > number.ceil
        new_num -= 1
        new_arr << new_num
        i -= 1
      end
    end
    while i < number.floor
      new_num += 1
      new_arr << new_num
      i += 1
    end
    new_arr
  end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

  def is_integer? i
    return i.is_a? (Integer) || i.is_a?(Float) && i % 1 == 0.0
  end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

  #https://codereview.stackexchange.com/questions/35340/printing-out-prime-numbers-from-an-array-given-a-max-number
  #https://stackoverflow.com/questions/16087514/how-to-check-if-number-has-a-decimal
  #https://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime
  def is_prime? n
    if n % 1 != 0
      return false
    end
    if n <= 1
      return false
    end
   for d in 2..(n - 1)
    if (n % d) == 0
     return false
    end
   end
   true
  end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

  def primes_less_than n
    primes_arr = []

    i = 2
    while i < n
      if is_prime?(i)
        # i is prime; add it to the array
        primes_arr << i
      end

      i += 1
    end

    # return primes_arr
    primes_arr
  end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial n
  if n == 1
    return 1
  end
  if n == 0
    return 1
  end
  if n < 0
     return NaN
   end
(1..n).reduce(:*)
end
