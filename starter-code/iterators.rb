###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
def count_spaces string
  count = 0
  space = " "
  string.each_char do |char|
    if char == space
      count += 1
    end
  end
  count
end
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

#string_lengths
def string_lengths array_of_strings
  array_of_strings.map {|str| str.length}
end
  # takes in an array of strings
  # returns an array containing the lengths of the strings

#remove_falsy_values
def remove_falsy_values list
  list.select { |item| !!item }
end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

#exclude_last
def exclude_last potato
  potato[0..-2]
end
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

#exclude_first
def exclude_first potato
  potato[1..-1]
end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

#exclude_ends
def exclude_ends potato
  potato [1..-2]
end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

#select_every_even
def select_every_even list
  # enumerators https://ruby-doc.org/core-1.9.3/Enumerator.html
  list.select.with_index {|item, index| item if index.even? }
end
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
def select_every_odd list
   list.select.with_index {|item, index| item if index.odd?}
end
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
def select_every_n merp, val=1
  merp.select.with_index {|item, index| item if index%val == 0 }
end
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
#compile_agenda
def compile_agenda items, order="DESC", bullet="*"
  sorted_items = items.sort_by {|ord| ord[:priority] }
  sorted_items.reverse! if order == "ASC"
  sorted_items.map {|ord| "#{bullet} #{ord[:title]}"  }.join("\n")
end
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
