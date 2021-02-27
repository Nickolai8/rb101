def after_midnight(str)
  time = str.split(':').map{ |el| el.to_i}
  time[0] = time[0] % 24
  (time[0] * 60 + time[1]) % 1440
end

def before_midnight(str)
  time = str.split(':').map{ |el| el.to_i}
  time[0] = time[0] % 24
  (1440 - (time[0] * 60 + time[1])) % 1440
end
