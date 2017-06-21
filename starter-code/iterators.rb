###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
def count_spaces string
  string.scan(/ /i).length
end
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

#string_lengths
def string_lengths strings
  return_array = []
  strings.each { |s|
    return_array.push(s.length)
  }
  return_array
end
  # takes in an array of strings
  # returns an array containing the lengths of the strings

#remove_falsy_values
def remove_falsy_values list
  list.delete_if { |l| !l }
end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

#exclude_last
def exclude_last array_or_string
  if array_or_string.is_a?(Array)
    array_or_string.pop
  end
  if array_or_string.is_a?(String)
    arr = array_or_string.split(//i)
    arr.pop
    array_or_string = arr.join
  end
  array_or_string
end
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

#exclude_first
def exclude_first array_or_string
  if array_or_string.is_a?(Array)
    array_or_string = array_or_string.drop(1)
  end
  if array_or_string.is_a?(String)
    arr = array_or_string.split(//i)
    arr = arr.drop(1)
    array_or_string = arr.join
  end
  array_or_string
end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

#exclude_ends
def exclude_ends array_or_string
  if array_or_string.is_a?(Array)
    array_or_string = array_or_string.drop(1)
    array_or_string.pop
  end
  if array_or_string.is_a?(String)
    arr = array_or_string.split(//i)
    arr = arr.drop(1)
    arr.pop
    array_or_string = arr.join
  end
  array_or_string
end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

#select_every_even
def select_every_even array
  array.select.with_index {|item, index| index.even?}
end
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
def select_every_odd array
  array.select.with_index {|item, index| index.odd?}
end
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
def select_every_n array, n = 1
  array.select.with_index {|item, index| index % n === 0}
end
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
#compile_agenda
def compile_agenda agenda_items, options = {}
  order = options[:order]
  bullet = options[:bullet] || '*'
  string = ''
  agenda_items.each {|hash|
    string = string + bullet + ' ' + hash[:title]
  }
  string
end
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
