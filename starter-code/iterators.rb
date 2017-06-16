###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces(string) # takes in a string
	count = 0
	space = " "
	string.each_char do |char|    #for each character in string
		if char == space            #if character is a space
			count += 1                #increment the count variable
		end
	end
	return count                 #returns number of spaces in the string
end

def string_lengths(arr)         #takes in a array of string
	count_arr = []

	arr.each do |string|          #for each string
		count_arr << string.length  #find length of each s tring and add length to array
	end

	count_arr                     # returns an array containing the lengths of the strings
end

def remove_falsy_values(list)
	list.find_all{|item| item}
end

def exclude_last(input)
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
	if input.kind_of?(Array)
		value_to_remove = input.last
		input.delete(value_to_remove)
		input
	elsif input.kind_of?(String)
		value_to_remove = input[-1]
		input = input.delete(value_to_remove)
		input
	end
end

def exclude_first(input)  # takes in an array or string
  input[1..-1]     #returns a new string with first item removed from array/string
end

def exclude_ends(input)# takes in an array or string
  input[1..-2]  #returns string/array with first and last items removed
end

def select_every_even(arr) # takes in an array
  result = []
  arr.each_with_index do |n,i| #for each item and index
    if i  %  2 == 0            #check if index is even
      result << n              #add indexed items to list
    end
  end

  result# returns a list of even-indexed items from the input
end

def select_every_odd(arr) # takes in an array
  result = []
  arr.each_with_index do |n,i|  #for each item and index
    if i % 2 !=0                #check if index is odd
      result << n               #add indexed items to list
    end
  end
  result # returns a list of odd-indexed items
end

def select_every_n(arr, n=1)  # takes in an array. defaults to an n value of 1
  result = []
  arr.each_with_index do |item, i|  #for each item and index in array
    if i % n  == 0    #if n is divisible by index
      result << item  #add item
    end
  end
  result # returns a list of odd-indexed items
end

def compile_agenda(list, order="DESC", bullet="*")    #sort order can be chagned to priority descending
  sorted_items = list.sort_by {|o| o[:priority]}      #sort by priority ascending
  sorted_items.reverse! if order == "ASC" #sort by ascending
  sorted_items.map {|o| "#{bullet} #{o[:title]}" }.join("\n")    #converts list of agenda items into string; title begins with bullet and separated by line breaks
end

