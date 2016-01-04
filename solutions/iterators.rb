###########################
#### LOOPS & ITERATORS ####
###########################

def count_spaces(str)
  count = 0
  space = " "
  str.each_char do |char|
    if char == space
      count += 1
    end
  end
  count
end

def string_lengths(list)
  list.map {|str| str.length }
end

def remove_falsy_values(list)
  list.select { |item| !!item }
end

def exclude_last(sequence)
  sequence[0..-2]
end

def exclude_first(sequence)
  sequence[1..-1]
end

def exclude_ends(sequence)
  sequence[1..-2]
end

def select_every_even(list)
  list.select.with_index {|item, index| item if index.even? }
end

def select_every_odd(list)
  list.select.with_index {|item, index| item if index.odd? }
end

def select_every_n(list, interval=1)
  list.select.with_index {|item, index| item if index%interval == 0 }
end

def compile_agenda(agenda_items, order="DESC", bullet="*")
  sorted_agenda_items = agenda_items.sort_by {|o| o[:priority] }
  sorted_agenda_items.reverse! if order == "ASC"
  sorted_agenda_items.map {|o| "#{bullet} #{o[:title]}"  }.join("\n")
end
