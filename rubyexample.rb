module Moveable
  def can_move?
    true
  end

  def accelerate
    @speed += 5       # TODO: what is max speed?
  end

  def brake
    @speed -= 5       # BUG: negative speed
  end
end

class Bicycle
  include Moveable

  def initialize
    # @speed = 0
  end
end

class Vehicle
  include Moveable

  attr_accessor :make, :model, :year # both get-able and set-able instance attributes
  attr_reader :speed, :gas_amount

  def initialize(make, model, year)
    p "you called the Vehicle::new class method"
    @make = make    # private instance attribute
    @model = model  # private instance attribute
    @year = year    # private instance attribute
    @is_running = false
    @speed = 0
    @gas_amount = 0 # percent
  end

  def on?
    @is_running # always false
  end

  def turn_on
    @is_running = true
  end

  def turn_off
    @is_running = false
  end

  def fill_up         # TODO: accept an integer between 0 & 100
    @gas_amount = 100
  end
end


class MonsterTruck < Vehicle

  attr_reader :nickname

  def initialize(make, model, year, nickname)
    super(make, model, year)
    @nickname = nickname
  end

  def transform
    "RahhhhhhBlaGraw"
  end

  def accelerate
    @speed += 10
  end
end




###################################
## FROM YOUR RUBY REPL (pry/irb) ##
###################################
# load "path/to/this/file.rb"
# c = Vehicle.new("ford", "probe", 2014)
# p c.make
