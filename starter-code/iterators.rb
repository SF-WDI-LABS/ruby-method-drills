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
def select_every_even arr
  arr_even = []
  arr_odd = []
  arr.each { |x| arr.index(x).even? ? arr_even << x : arr_odd << x }
  return arr_even
end

#select_every_odd
def select_every_odd arr
  arr_even = []
  arr_odd = []
  arr.each { |x| arr.index(x).even? ? arr_even << x : arr_odd << x }
  return arr_odd
end

#select_every_n
def select_every_n arr, n=1
  arr_new = []
  arr.each do |x|
    i = arr.index(x)
    if i % n == 0
      arr_new << x
    end
  end
  return arr_new
end


## STRETCH ##
#compile_agenda
def compile_agenda arr
  arr.each do |x|
    p "*#{x[:title]}/n" ## this does not work :(
  end
end
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority descending (high to low) by default
  # sort order can (optionally) be changed to priority ascending
  # the bullet can (optionally) be changed to any symbol
