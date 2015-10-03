# Timer

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = @seconds               # 4000
    hours = time / 3600           # 1.111111111
    minutes = (time % 3600) / 60  # 400 / 60 = 6.66667
    seconds = (time % 3600) % 60  # 40
    return padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded value
    if value.to_s.size == 1 
      "0" + value.to_s
    else
      value.to_s
    end
  end

end