class Timer
  attr_accessor :seconds, :time_string
  def initialize
    @seconds = 0
  end
  def seconds= (seconds)
    @seconds = seconds

    if (@seconds/60/60) > 59
      hours = (@seconds/60/60).to_s
    elsif (@seconds/60/60) > 9
      hours = (@seconds/60/60).to_s
    elsif (@seconds/60/60).between?(0, 10)
      hours = "0" + (@seconds/60/60).to_s
    else
      hours = "00"
    end

    if (@seconds/60) == 60
      minutes = "00"
    elsif (@seconds/60) > 60
      minutes = "0" + (@seconds/60-60).to_s
    elsif (@seconds/60).between?(9, 60)
      minutes = (@seconds/60).to_s
    elsif (@seconds/60).between?(0, 10)
      minutes = "0" + (@seconds/60).to_s
    else
      minutes = "00"
    end


    if (@seconds%60) > 9
      seconds = (@seconds%60).to_s
    elsif (@seconds%60).between?(0, 10)
      seconds = "0" + (@seconds%60).to_s
    elsif (@seconds%60) == 0
      seconds = "00"
    else
      seconds = "00"
    end
    
    @time_string = "#{hours}:#{minutes}:#{seconds}"
  end
end
