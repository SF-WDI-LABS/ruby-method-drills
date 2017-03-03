##############################
#### MANIPULATING NUMBERS ####
##############################
def count_to(number)
  num_arr = []

  if number < 0
    i = 0
    while i >= number
      num_arr << i
      i -= 1             #counts up
    end
    return num_arr       #returns array containing every integer from 0 to n
  elsif number >= 0
    i = 0
    while i <= number
      num_arr.push(i)
      i += 1            #counts down
    end

    return num_arr     #returns array containing every integer from 0 to n
  end
end

def is_integer?(number)
  number.class == Fixnum || number.class == Bignum || (number.is_a?(Float) && !number.nan? && number.to_i == number )

  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
end

def is_prime?(number)              #takes a number and checks if it is a prime #
  return false if  number <= 1     #returns false for numbers less than or equal to 1

  return false if number % 1 != 0  #returns false for non-integer decimals
  num = number - 1                 #set numbers below input number
  while num > 2
    num -= 1
    if number % num == 0           #returns false if number divisible by anything but 1 and themselves
      return false
    end
  end

  return true                     #returns true from prime number s
end

def primes_less_than(number)     #takes in a number
  prime_nums = []
  i = 2
  while i > 1 && i < number      #set i so it doesn't return number
    if is_prime?(i)              #finds all primes less than given number
      prime_nums << i            #add primes below num to array
    end
    i += 1
  end

  prime_nums                   #returns an empty array if no primes below number
                               #returns an array of prime nums below number
end

def iterative_factorial(number)   #takes in a number
  return 1 if number == 0 || number == 1    #return 1 for 0 and 1
  return Float::NAN if number < 0 ||  number % 1 != 0   #returns NaN for numbers less than 0 and non integers
  result = 1
  (1..number).each do |i|       #for each number between 1 nada number
    result *= i                 #multiply result by number
  end
  result                        #return factorial of input num
end
