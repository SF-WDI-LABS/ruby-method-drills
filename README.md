## Ruby Method Drills

Can you write code in `drills.rb` to pass the tests in the `spec` folder?

### Setup

Fork this repo on GitHub.

``` bash
git clone YOUR_FORK_CLONE_URL.git
cd ruby_method_drills
```

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
    rspec spec/1_argument_spec.rb
```

You should see roughly the following output:

    FFFFFFFF ---> 8 failed tests ("F"), 0 passed tests (".")
    Failures:

      1) #say_hello returns 'hello'
         Failure/Error: expect( say_hello ).to eq "hello"

           expected: "hello"
                got: "hi"

           (compared using ==)
         # ./spec/drills_spec.rb:8:in `block (2 levels) in <top (required)>'

    Finished in 0.0028 seconds (files took 0.08831 seconds to load)
    8 examples, 8 failures

    Failed examples:
    rspec ./spec/drills_spec.rb:7 # #say_hello returns 'hello'


#### Congrats!
* The first tests are failing. _We're seeing **RED**._
* Now we need to write code (in `drills.rb`) to pass the tests and _turn them **GREEN**_.
* When the test passes, we're ready to _stop and **REFACTOR**_!

### Rspec Tips

* Pay close attention to the rspec output in your terminal
* Run your tests frequently and read the output carefully.
* BE *VERY CAREFUL* to use the correct function name.
* To limit your test output, consider filtering tests by method name:  
``` bash
    rspec spec/1_argument_spec.rb -e get_fruit
```

### Ruby Tips

When in doubt, test your code in the ruby REPL (`irb`, interactive ruby):  
``` bash
    irb
```

(This is similar to running the node repl by typing `node`).

When you want to quit `irb`, enter `quit`.

Inside `irb` you can "hang a dot" and hit `tab` twice to see available methods:

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

Another handy trick is to load your `drills.rb` file so that you can manually test your functions. This is similar to what we did in node when we used "require" to import a file.

Make sure you're in the correct directory, then in `irb` type:  
``` ruby
    2.1.2 :002 > load "./drills.rb"
    2.1.2 :003 > say_hello
```

You can also run a ruby file from the command line by typing:

``` bash
    ruby drills.rb
```
