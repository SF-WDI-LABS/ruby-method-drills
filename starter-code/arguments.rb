#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  def say_hello
    "hello"
  end

#echo
  def echo x
    x
  end
  # returns the input string
  # i.e., if the passed input string is "hello", returns "hello"

#eddie_izzards_height
  def eddie_izzards_height height=0
    height + !?
  end
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

#how_many_args
  def how_many_args *p
    p.count
  end
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

#find_answer
def find_answer (answer: nil, **)
  answer
end
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments - no idea!?
  # Hint: google ruby keyword arguments
