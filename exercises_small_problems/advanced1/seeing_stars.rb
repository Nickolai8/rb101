# input int
# output displays, no output
# non mutating

# rules, examples
# 8 pointed star
# input is an odd integer always
# smallest star is 7 x 7 grid
# grid is size of int argument, n x n


# DS/Alg
# initialize star char
# set up a border space char
# set up a space char for spaces between star chars
# mathematically change the value depending on the line
# conditionally branch for upper star, midline, and lower star



def star(n)
counter = n
spaces = (n - 3) / 2 + 1
padding = 0
midline = n / 2 + 1

  loop do
    break if counter <= 0
    if counter == midline
      puts '*' * n
    elsif counter > midline
      spaces -= 1
      puts (' ' * padding) + '*' + (' ' * spaces) + '*' + (' ' * spaces) + '*' 
      padding += 1
    else  
      padding -= 1
      puts (' ' * padding) + '*' + (' ' * spaces) + '*' + (' ' * spaces) + '*' 
      spaces += 1
    end
    counter -= 1
  end

end

star(11)


