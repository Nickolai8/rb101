DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i / 1
  remainder = (angle % 1).round(10)
  minutes = (remainder * 60).to_i.to_s
  seconds = (((remainder * 60) % 1) * 60 ).round(0).to_s

  minutes.insert(0,'0') if minutes.size == 1
  seconds.insert(0,'0') if seconds.size == 1

  "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")