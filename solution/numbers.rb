##############################
#### MANIPULATING NUMBERS ####
##############################

def is_prime?(num)
  if num.class == Fixnum || (num.to_i == num) # checking if whole number
    false
  elsif num <= 1 # checking if in range
    false
  else 
    # this could be a prime! loop through and check divisibility
    (2..num-1).each do |n|
      if num % n == 0
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
