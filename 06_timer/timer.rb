class Timer
  attr_accessor :seconds, :time_string
  
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds= sec
    @hours = sec / 3600
    @minutes = (sec - (@hours * 3600)) / 60
    @seconds = sec - ((@minutes * 60) + (@hours * 3600))
    @time_string = "#{padded @hours}:#{padded @minutes}:#{padded @seconds}"
  end

  def padded number
    if number < 10
      return "0" + number.to_s
    else
      return number.to_s
    end
  end
end
