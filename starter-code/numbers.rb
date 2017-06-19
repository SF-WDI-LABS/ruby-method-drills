##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
def count_to num
  ans = num > 0 ? 0.upto(num) : 0.downto(num)
  ans.each.to_a
end

#is_integer?
def is_integer? num
  if num.is_a?(Integer) and num % 1 == 0
    return true
  else
      return false
  end
end

# returns true for Floats (decimals) equal to integers -- !!?!!?!?


#is_prime?
require 'prime'
def is_prime? num
  if num % 1 == 0
    Prime.prime?(num)
  else
    return false
  end
end

#primes_less_than
require 'prime'
def primes_less_than num
  ans = Prime.each(num)
  arr = ans.each.to_a
  if Prime.prime?(num)
    arr.reverse.drop(1).reverse
  else
    arr
  end
end


## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
