def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


# While methods can be chained left to right, this is an example
# of nesting functions in which case we have to work from the inner most
# outward. the innermost functions, 
# [rps("rock", "paper")] and [rps("rock", "scissors")] 
# return "paper" and "rock" respectively. From there we can replace the
# function [rps(rps("rock", "paper"), rps("rock", "scissors"))]
# with [rps ("paper", "rock")] and evaluate that to "paper".
# From there, we can replace the function
# [rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")]
# with [rps("paper", "rock")] which returns "paper".
# The final return is "paper", which is returned to "puts" and printed
# to the consol.
