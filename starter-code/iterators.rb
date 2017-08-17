###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

# def count_spaces stringthing
#   blank_space_count = 0
#   space = " "
#   string.each_char do |wordfiller|
#     if wordfiller == space
#       blank_space_count += 1
#     end
#   end
#   blank_space_count
# end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings

def string_lengths stringthing
  stringthing.map {|s| s.length}
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

  ## did not work
  # def remove_falsy_values listthing
  #   listthing.reject {|falsything| falsything.nil? || falsything == ''}
  # end

def remove_falsy_values listthing
  listthing.select {|falsything| !!falsything}
end


#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

def exclude_last something
  #something.pop
  something[0..-2]
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_first something
  # something.drop(1)
  something[1..-1]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def exclude_ends something
  something[1..-2]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input

## code help taken from solutions and here https://stackoverflow.com/questions/34292530/selecting-the-odd-or-even-elements-out-of-an-array

def select_every_even listthing
  listthing.select.with_index{|thing, i| thing if i.even?}
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

def select_every_odd listthing
  listthing.select.with_index{|thing, i| thing if i.odd?}
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

def select_every_n listthing, interval=1
  listthing.select.with_index{|thing, i| thing if i%interval == 0}
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
