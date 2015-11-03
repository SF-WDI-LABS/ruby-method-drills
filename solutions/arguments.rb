#########################
#### USING ARGUMENTS ####
#########################

def say_hello
  "hello"
end

def echo(input)
  input
end

def how_many_args(*args)
  args.count
end

def find_answer(**kwargs)
  kwargs[:answer]
end