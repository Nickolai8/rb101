def prompt(string)
  puts("LOAN SHARK: #{string}")
end

def valid_number?(num)
  if (num.to_f.to_s == num) || (num.to_i.to_s == num)
    true
  else
    false
  end
end

# APR
APR = 0.35

# Greeting
prompt("Hey there! What's your name?")
name = nil
loop do
  name = gets.chomp.capitalize
  break if !name.nil? && !name.empty?
  prompt("Give me a name if you want to talk.")
end

loop do
  # Loan amount
  prompt("Alright, #{name}, exactly how much money are you looking for?")
  user_loan = 0

  loop do
    user_loan = gets.chomp
    break if valid_number?(user_loan) && user_loan.to_f > 0
    prompt("Give me a real number kid.")
  end

  # Loan duration
  prompt("How many years is it gonna take you to pay me back?")
  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp
    break if valid_number?(loan_duration_years) &&
             (1..5).include?(loan_duration_years.to_i)
    if valid_number?(loan_duration_years)
      puts "1 to 5 years kid."
    else
      puts "That's not even a number."
    end
  end

  # Calculate interest rate
  monthly_interest_rate = APR / 12

  # Calculate loan duration in months
  loan_duration_months = loan_duration_years.to_i * 12

  # Calculate monthly payment
  monthly_payment = user_loan.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  # Loan offer
  prompt("Alright, youll pay me $#{monthly_payment} per month, that's it.")

  # Client agreement yes or no
  prompt("Do we have a deal? [y/n]")
  agreement = gets.chomp.chars.first

  if agreement == 'y'
    prompt("Pleasure doing business with you")
    break
  else
    prompt("Lets start over.")
  end
end
