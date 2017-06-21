#########################
#### USING ARGUMENTS ####
#########################
#say_hello
def say_hello
  "hello"
end
  # returns 'hello'

#echo
def echo string
  "#{string}"
end
  # returns the input string
  # i.e., if the passed input string is "hello", returns "hello"

#eddie_izzards_height
def eddie_izzards_height (heel_height=0)
  heel_height + 67
end
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

#how_many_args
def how_many_args (*args)
  args.length
end
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

#find_answer
def find_answer(options={})
  options[:answer]
end
# puts find_answer(fish: 10, answer: "yay")
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
