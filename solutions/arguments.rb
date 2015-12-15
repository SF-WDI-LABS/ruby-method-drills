#########################
#### USING ARGUMENTS ####
#########################

def say_hello
  "hello"
end

def echo(input)
  input
end

def eddie_izzards_height(heel_height=0)
  67 + heel_height
end

def how_many_args(*args)
  args.count
end

def find_answer(**kwargs)
  kwargs[:answer]
end
