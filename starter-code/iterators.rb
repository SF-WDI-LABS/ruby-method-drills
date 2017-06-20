###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  def count_spaces str
    spaces = str.scan(" ")
    freqs = Hash.new(0)
    spaces.each { |spaces| freqs[spaces] += 1 }
    freqs[" " || 0]
  end

#string_lengths
def string_lengths arr
  arr.map { |e| e.length }
end

#remove_falsy_values
def remove_falsy_values list
  list.reject { |v| v == false }.compact
end

#exclude_last
def exclude_last arr
  arr[0..-2]
end

#exclude_first
def exclude_first arr
  arr[1..-1]
end

#exclude_ends
def exclude_ends arr
  arr[0..-2].reverse[0..-2].reverse
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
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
