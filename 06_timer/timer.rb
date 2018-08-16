class Timer
  def initialize
    @seconds = 0
    @time_string = 0
  end
  
  attr_reader :seconds, :time_string

  def seconds=(newTime)
    @seconds = (newTime)
    convert(newTime)
  end

  def convert(newTime)
    @time_string = Time.at(newTime).utc.strftime("%H:%M:%S")
  end
end
