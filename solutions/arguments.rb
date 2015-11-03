#########################
#### USING ARGUMENTS ####
#########################

def say_hello
  "hello"
end

def echo(input)
  input
end

def get_fruit(id=0)
  ["apple", "pear"][id]
end

def how_many_args(*args)
  args.count
end

def find_answer(**kwargs)
  kwargs[:answer]
end