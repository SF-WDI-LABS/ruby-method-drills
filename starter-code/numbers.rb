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
  if (num.is_a?(Integer) || (num.is_a?(Float) && num % 1 == 0.0))
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
def iterative_factorial num
  num < 0 ? Float::NAN : (1..num).inject(1, :*)
end
  # returns NaN for non-integers
