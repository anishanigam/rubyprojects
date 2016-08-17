# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
  def initialize (model_year)
    @model_year = model_year
    @number_wheels=4
    @lights=false
    @blinkers="off"
    @speed=0
  end

# returning the number of wheels so we can use it/so it can run
  def number_wheels
    @number_wheels
  end

# returing the model year so it can run
  def model_year
    @model_year
  end

# make a method that turns the lights on and off
  def light_switch(a)
    if a=="on"
    @lights=true
    elsif a=="off"
    @lights=false
    end
  end


  def light_switch?
    @lights
  end

# make a method that turns the blinker switch left or right
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

  def speed
    @speed
  end

  def info
    "Speed: " + @speed.to_s + "Model year: " + @model_year.to_s + "blinker switch: " + @blinkers.to_s + "number wheels: " + @number_wheels.to_s
  end
end
