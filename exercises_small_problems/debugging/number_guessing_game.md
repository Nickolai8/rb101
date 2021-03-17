````ruby
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)
````

This method recursively calls itself and the loop exit condition is never reached. While local variable `attempts` was created(on `line 7`) to keep incrementing( on`line 10 `) after each loop iteration(each guess) in order to eventually trigger the `break if` statement on `line 11`, the `guess_number` method recursively calls itself on`line 28`. This means that each loop iteration only runs once before the method is invoked again, so the local variable `attempts` is never greater than the number 2, and the break statement is never achieved. This method will keep allowing guesses until it is called enough times to cause a `SystemStackError`, or the user exits the program by force.