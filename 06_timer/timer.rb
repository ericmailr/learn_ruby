class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds=0    
  end
  
  def seconds
    @seconds  
  end
  
  def time_string
    time=""
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60
    time_units = [hours, minutes, seconds]
    time_units.map! do |unit|
      if unit.to_s.length==1
        unit = ("0" + unit.to_s)
      else
        unit = unit.to_s
      end
    end
    puts time_units
    time = time_units[0] + ":" + time_units[1] + ":" + time_units[2]
end
end
