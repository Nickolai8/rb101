def century (num)
  century_num = ((num-1) / 100 + 1).to_s
  suffix = ''
  if %w(11 12 13).include?(century_num[-2,2]) then suffix = 'th'
  elsif  century_num[-1] == '1' then suffix = 'st'
  elsif century_num[-1] == '2' then suffix = 'nd'
  elsif century_num[-1] == '3' then suffix = 'rd'
  else suffix = 'th' end

    p century_num + suffix
end
