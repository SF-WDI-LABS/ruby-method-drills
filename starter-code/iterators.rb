###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
def count_spaces string
  string.count " "
end
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

#string_lengths
def string_lengths array
  array.map {|el| el.length}
end
  # takes in an array of strings
  # returns an array containing the lengths of the strings

#remove_falsy_values
def remove_falsy_values array
  array.select {|el| !!el}
end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

#exclude_last
def exclude_last element
  element[0..-2]
end
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

#exclude_first
def exclude_first element
  element[1..-1]
end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

#exclude_ends
def exclude_ends element
  element[1..-2]
end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

#select_every_even
def select_every_even array
  array.select {|el| array.index(el).even?}
end
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
def select_every_odd array
  array.select {|el| array.index(el).odd?}
end
  # takes in an array
  # returns a list of odd-indexed iems

#select_every_n
def select_every_n(array, n=1)
  array.select {|el| array.index(el) % n == 0}
end
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
