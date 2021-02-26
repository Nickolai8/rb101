def lightswitch(arr)
  switch = Array.new(arr.size, nil)

  round = 1
  loop do
    switch.each_index do |i|
      if switch[i] == nil && (i + 1) % round == 0 then switch[i] = i + 1
      elsif switch[i] == i + 1 && (i + 1) % round == 0 then switch[i] = nil
      end
    end
    round += 1
    break if round > switch.size
  end
  switch.compact
end

def total_lights(num)
  arr = Array.new(num)
  arr.each_index { |i| arr[i] = i + 1}
end


collection = total_lights(1000)
p lightswitch(collection)