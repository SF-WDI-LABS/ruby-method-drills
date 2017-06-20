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

#eddie_izzards_height
  def eddie_izzards_height height=0
    height + 67
  end


#how_many_args
  def how_many_args *p
    p.count
  end


#find_answer
def find_answer (answer: nil, **)
  answer
end

#raises a TypeError when given non-keyword arguments
