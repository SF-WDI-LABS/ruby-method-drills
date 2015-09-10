## Ruby Method Drills

Pass the tests!

### Setup
``` bash
git clone THIS_REPO
cd username_generator
```

#### Testing

We'll use a tool called `rspec`  to outline our objectives AND test our code as we go... hooray for Test Driven Development (TDD)!

`rspec` is available as a Ruby gem, so start in your terminal by running the command:

``` bash
gem install rspec
```

You might get an error here, but we believe in you. Fix it.

### Test Driven Development -- Red, Green, Refactor.

Take a look at `spec/drills_spec.rb`. These are the tests that we want to make pass.

To run the tests type the following in the command line:

```bash
rspec spec/drills_spec.rb
# or
rspec spec/drills_spec.rb --format documentation
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


####Hooray!
* The first tests are failing. _We're seeing **RED**._
* Now we need to write code (in `drills.rb`) to pass the tests and _turn them **GREEN**_. 
* When all the tests are green, we're ready to _stop and **REFACTOR**_!

**Tips:**

* Pay close attention to the rspec output in your terminal
* Run your tests frequently and read the output carefully.
* BE *VERY CAREFUL* to use the correct function name.
