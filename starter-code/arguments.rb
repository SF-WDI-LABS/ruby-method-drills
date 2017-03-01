#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  'hello'
end

#echo
  # returns the input string

def echo(str)
  str.to_s
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

  def eddie_izzards_height(heel_height_in_inches=0)
    heel_height_in_inches+=67
  end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
def how_many_args(*args)
  args.count
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

def find_answer(args={})
  args[:answer]
end
