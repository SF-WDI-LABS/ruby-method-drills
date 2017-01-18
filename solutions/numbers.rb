##############################
#### MANIPULATING NUMBERS ####
##############################


def count_to(n)
  n = n.to_i
  if n >= 0
    0.upto(n).to_a  # or (0..n).to_a
  else
    0.downto(n).to_a
  end
end

def is_integer?(num)
  num.class == Fixnum || num.class == Bignum ||
    ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end


def is_prime?(num)
  if !is_integer?(num) || num <= 1 # checking if whole number
    false
  elsif num <= 1 # checking if in range
    false
  else
    # this could be a prime! loop through and check divisibility
    (2..(num-1)).each do |n|
      if num % n == 0 # it's not prime
        return false  # break the loop early
      end
    end
    true
  end
end

def primes_less_than(num)
  primes = []
  (2..num-1).each do |n|
    if is_prime?(n)
      primes.push n
    end
  end
  primes
end


def iterative_factorial(num)
  if num < 0 || !is_integer?(num)
    return Float::NAN  # a constant meaning "Not a Number"
  end
  memo = 1
  (1..num).each do |i|
    memo = memo*i
  end
  memo
end

# ruby's shorthand way with `reduce` (see also: `inject`)
# nearly same logic as above, but shorter
# *and* accepts non-integer decimals (not desired behavior)
# def iterative_factorial(num)
#   (1..num).reduce(1, :*)
# end
