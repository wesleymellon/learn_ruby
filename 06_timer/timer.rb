class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def seconds=(total_seconds)
    hours = total_seconds / 3600
    total_seconds = total_seconds - hours * 3600
    minutes = total_seconds / 60
    total_seconds = total_seconds - minutes * 60
    seconds = total_seconds

    hours_string = hours > 9 ? hours.to_s : "0#{hours}"
    minutes_string = minutes > 9 ? minutes.to_s : "0#{minutes}"
    seconds_string = seconds > 9 ? seconds.to_s : "0#{seconds}"

    @time_string = "#{hours_string}:#{minutes_string}:#{seconds_string}"
    @seconds
  end
end
