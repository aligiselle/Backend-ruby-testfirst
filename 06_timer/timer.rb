class Timer
  #write your code here
  attr_accessor :seconds, :minutes,  :hours

  def seconds(seconds = 0)
    @minutes = 0
    @hours = 0
    @seconds = seconds
  end

  def convert_time(seconds)
    if seconds < 60
      @seconds = seconds
    elsif seconds == 60
      @seconds = 0
      @minutes = 1
    elsif seconds > 60 && seconds < 3600
      @minutes = @seconds / 60
      @seconds = @seconds % 60
    elsif seconds == 3600
      @seconds = 0
      @hours = 1
    elsif seconds > 3600
      @minutes = (@seconds / 60) % 60
      @hours = @seconds /(60 * 60)
      @seconds = @seconds % 60
    end
    return @hours, @minutes, @seconds
  end

  def time_string
      convert_time(@seconds)
      Time.new(2022,10,31,@hours,@minutes,@seconds).strftime("%T")
  end
end
