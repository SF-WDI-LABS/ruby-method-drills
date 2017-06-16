#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  "hello"  #returns "hello"
end

def echo(string)
  string  # returns the input string
end
def eddie_izzards_height(height=0)    #default value of height is 0, takes in height
  height + 67   #adds heel height ot Eddie's base height of 67 inches
  # calculates and returns Eddie Izzard's height
end
arguments = ARGV
def how_many_args(*args)  #accepts any number of argument without complaint
  args.count #returns the total number of arguments passed to the function
end

def find_answer(kwargs={})    #takes in an empty object keyward argument
  kwargs[:answer]
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
#
end
