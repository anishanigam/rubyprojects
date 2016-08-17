require_relative 'car'

class Tesla < Car
  def accelerate
    @speed.to_s
    @speed += 10
  end

  def brake
    if (speed_check >= 7)
      @speed -= 7
    else
      speed_check = 0
    end
  end

  def speed_check
    @speed
  end

end
