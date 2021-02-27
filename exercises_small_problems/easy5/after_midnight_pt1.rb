def time_of_day(num)
  default = "00:00"
  hours = 0
  minutes = 0
  num = num % 1440

  if num >= 0
    hours = (num / 60).to_s
    minutes = (num % 60).to_s
  else
    hours = ((1440 + num) / 60).to_s
    minutes = ((1440 + num) % 60).to_s
  end
  hours = '0' + hours if hours.chars.length == 1
  minutes = '0' + minutes if minutes.chars.length == 1
  
  hours + ':' + minutes
end

