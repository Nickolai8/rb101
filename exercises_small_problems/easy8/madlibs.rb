def prompt(part_of_speech)
  puts "Enter a #{part_of_speech}"
  gets.chomp
end

noun = prompt('noun')
verb = prompt('verb')
adjective = prompt('adjective')
adverb = prompt('adverb')

puts "Every time I'm at #{adjective} #{noun}, I #{adverb}" +
     " #{verb} all over the place."