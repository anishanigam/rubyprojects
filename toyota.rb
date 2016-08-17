require_relative 'car'

class Toyota < Car
  def accelerate
    @speed
    @speed += 7
  end

  def brake
    if (speed_check >= 5)
      @speed -= 5
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end
end
