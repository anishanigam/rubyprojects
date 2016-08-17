# Story: As a programmer, I can make a vehicle.
# Challenge: Create a class called Vehicle, and create an object called my_vehicle which is of class Vehicle.

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Challenge: Make model year part of the initialization.

# Story: As a programmer, I can turn on and off the lights on a given vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off.

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.
#
# Story: As a programmer, I can sort my collection of cars based on model year.
#
# Story: As a programmer, I can sort my collection of cars based on model.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort my collection of cars based on model and then year.



class Vehicle
  def initialize(model_year)
    @model_year = model_year
    @number_wheels = 4
    @lights = false
    @blinkers = false
    @speed = 0
  end

  def reveal_myear
    @model_year
  end

  def number_wheels
    @number_wheels
  end

  def speed
    @speed
  end
#make a method to turn the lights on and off

  def lights_switch(a)
    if a=="on"
      @lights=true
    elsif a=="off"
      @lights=false
    end
  end
#call this method to see if lights are on or off

  def lights_switch?
    @lights
  end

  def blinker_switch(b)
    if b=="left"
      @blinkers=true
    elsif b=="right"
      @blinkers=false
    end
  end

  def blinker_switch?
    @blinkers
  end
end

#Story: As a programmer, I can make a car.
#Challenge: Create a class called Car, and create an object called my_car which is of class Car.

#Story: As a programmer, I can tell how many wheels a car has; default is four.
#Challenge: Initialize the car to have four wheels, then create a method to return the number of wheels.

class Car < Vehicle
# initialize passes arguments to the class
end
my_car=Car.new 2016

# Story: As a programmer, I can make a Tesla car.
# Challenge: Create an object called my_tesla which is of class Tesla which inherits from class Car .

class Tesla < Car

  def speed_up
    @speed
    @speed += 10
  end

  def slow_down
    if (speed_check>=7)
      @speed -= 7
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end
end
my_tesla=Tesla.new 2016

# Story: As a programmer, I can make a Tata car.
# Challenge: Create an object called my_tata which is of class Tata.

class Tata < Car
  def speed_up
    @speed
    @speed += 2
  end

  def slow_down
    if (speed_check>=1.25)
      @speed -= 1.25
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end
end

my_tata=Tata.new 2016

# Story: As a programmer, I can make a Toyota car.
# Challenge: Create an object called my_toyota which is of class Toyota.

class Toyota < Car
  def speed_up
    @speed
    @speed += 7
  end

  def slow_down
    if (speed_check>=5)
      @speed -= 5
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end
end

my_toyota=Toyota.new 2016



collection = []


my_tesla1=Tesla.new 2015
my_tesla2=Tesla.new 2012
my_toyota1=Toyota.new 2011
my_toyota2=Toyota.new 2012
my_tata1=Tata.new 2009
my_tata2=Tata.new 2010

collection.push(my_tata1, my_tata2, my_tesla1, my_tesla2, my_toyota1,my_toyota2)

collection.sort do
  |x,y| [x.class.to_s, x.reveal_myear] <=> [y.class.to_s, x.reveal_myear]
end
