<!--
Creator: GA SF
Last Edited By: Brianna
Location: San Francisco
-->

# <img src="https://cloud.githubusercontent.com/assets/7833470/10899314/63829980-8188-11e5-8cdd-4ded5bcb6e36.png" height="60"> Ruby Method Drills

<!-- BEGIN SF-WDI-LABS BADGES -->
<!-- INSTRUCTOR TODO: Make sure to manually bump version number of commits-since ("updates") badge to latest release version -->
[![Current Labs Version](https://img.shields.io/github/tag/SF-WDI-LABS/ruby-method-drills.svg?label=sf-wdi-labs)](https://github.com/SF-WDI-LABS/ruby-method-drills)
[![Issues Count](https://img.shields.io/github/issues-raw/SF-WDI-LABS/ruby-method-drills.svg)](https://github.com/SF-WDI-LABS/ruby-method-drills/issues)
<!-- END SF-WDI-LABS BADGES -->

### Overview

Write code in each starter code file to pass the tests in the `spec` folder!

### Objectives

This will be *way* more practice with Ruby methods and test driven development - and a great opportunity to explore some new tactics!

### Setup

Clone this repo on GitHub.

``` bash
git clone https://github.com/SF-WDI-LABS/ruby-method-drills
cd ruby-method-drills
```

The files you'll work on are:

1. `arguments.rb`  -- (test file is `argument_spec.rb`)

2. `strings.rb`  -- (test file is `string_spec.rb`)

3. `numbers.rb`  -- (test file is `number_spec.rb`)

4. `hashes.rb`  -- (test file is `hash_spec.rb`)

5. `iterators.rb`  -- (test file is `iterator_spec.rb`)

#### Testing

We'll use a tool called `rspec`  to outline our objectives AND test our code as we go... hooray for Test Driven Development (TDD)!

`rspec` is available as a Ruby gem, so start in your terminal by running the command:

``` bash
    gem install rspec
```

You might get an error here, but we believe in you. Fix it.

### Test Driven Development -- "Red, Green, Refactor"

Take a look at one of the "spec" files in the `spec/` folder. These are the tests that we want to make pass.

To run all the tests type the following in the command line:

```bash
    rspec
    # or run a specific spec file
    rspec spec/argument_spec.rb
```

You should see this as part of your output:

```
Failures:

  1) #say_hello returns 'hello'
     Failure/Error: expect( say_hello ).to eq "hello"

     NameError:
       undefined local variable or method `say_hello' for #<RSpec::ExampleGroups::SayHello:0x007f9ef3a9cc68>
     # ./spec/argument_spec.rb:14:in `block (2 levels) in <top (required)>'
```

#### Congrats!
* The first tests are failing. _We're seeing **RED**._
* Now we need to write code (in the starter code directory) to pass the tests and _turn them **GREEN**_.
* When a test passes, we're ready to _stop and **REFACTOR**_!

### Rspec Tips

* Pay close attention to the rspec output in your terminal.
* Run your tests frequently and read the output carefully.
* BE *VERY CAREFUL* to use the correct function name.
* To limit your test output, consider filtering tests by method name with the `-e` flag:  
``` bash
    rspec spec/argument_spec.rb -e get_fruit
```

### Ruby Tips

When in doubt, test your code in the ruby REPL (`irb` or `pry`).

(This is similar to running the node repl by typing `node`).

When you want to quit `irb` or `pry`, type and enter `quit`.

Inside `pry`, you can "hang a dot" and hit `tab` twice to see available methods:

``` ruby
    2.1.2 :001 > "string". # hang a dot and hit tab twice!
    # Display all 148 possibilities? (y or n)
    #                               "".match
    # "".__id__                      "".method
    # "".__send__                    "".methods
    # "".ascii_only?                 "".next
    # "".b                           "".next!
    # "".between?                    "".nil?
    # "".bytes                       "".object_id
    # "".bytesize                    "".oct
    # ...
```

Another handy trick is to load your Ruby file so that you can manually test your functions.

Make sure you're in the correct directory, then in `pry` type:  
``` ruby
    2.1.2 :002 > load "./starter-code/arguments.rb"
    2.1.2 :003 > say_hello
```

(Re-`load` your file after you make changes.)


You can also run a ruby file from the command line by typing:

``` bash
    ruby starter-code/arguments.rb
```
