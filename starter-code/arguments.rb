#########################
#### USING ARGUMENTS ####
#########################
#say_hello
def say_hello
  "hello"
end
  # returns 'hello'

#echo
def echo str
  str
end
  # returns the input string
  # i.e., if the passed input string is "hello", returns "hello"

#eddie_izzards_height
def eddie_izzards_height heel_height
  67 + heel_height
end
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
