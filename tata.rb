require_relative 'car'

class Tata < Car
  def accelerate
    @speed
    @speed += 2
  end

  def brake
    if (speed_check >= 1.25)
      @speed -= 1.25
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end
end
