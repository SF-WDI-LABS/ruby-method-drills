###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
  def count_spaces count_spaces
    count = 0
    i = 0
    while i < count_spaces.length
      if count_spaces[i] == " "
        count +=1
      end
      i += 1
    end
    count
  end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
  def string_lengths array
    arr = []
    i = 0
    while i < array.length
       arr << array[i].length
       i += 1
    end
    arr
  end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

  def remove_falsy_values values
    values && True

  end

#https://stackoverflow.com/questions/15769739/determining-type-of-an-object-in-ruby
#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
  def exclude_last str_arr
    if str_arr.is_a?(Array)
      str_arr.pop
      return str_arr
    end
    if str_arr.is_a?(String)
      return str_arr[0..-2]
    end
  end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
  def exclude_first str_arr
    if str_arr.is_a?(Array)
      str_arr.shift
      return str_arr
    end
    if str_arr.is_a?(String)
      return str_arr[1..-1]
    end
  end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
  def exclude_ends str_arr
    if str_arr.is_a?(Array)
      str_arr.shift
      str_arr.pop
      return str_arr
    end
      if str_arr.is_a?(String)
        return str_arr[1..-2]
      end
  end


#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
  def select_every_even arr
    i = 0
    even_arr = []
    while i < arr.length
      even_arr << arr[i]
      i += 2
    end
    even_arr
  end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
  def select_every_odd arr
    i = 1
    odd_arr = []
    while i < arr.length
      odd_arr << arr[i]
      i += 2
    end
    odd_arr
  end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
  def select_every_n arr, *n
    if n == nil || ""
      n = 1
    end
      i = 0
      n_arr = []
    while i < arr.length
        if i % n == 0
          n_arr << arr[i]
        end
        i++
      n_arr
    end
  end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
