````ruby
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum
````

The reason this code is crashing and returning an error is because we have some incorrect code on `line 30`. When `remaining_cards.map` is called, and each card is changed into its value by invoking the `score` method for each card (using each card as an argument),  that value is returned and nothing is done with it. Instead, we should mutate the remaining cards to change the symbols such as `:king`, `:queen`, etc to their respective values, so we can add them to the sum (symbols cannot be added to integers, which is what the code had previously tried to do).

Now we have another issue, being remaining cards has the same values for every iteration. The reason this is, is that on `line 358`, when `cards.pop` is called, it removes the value from  the array object that the local variable `cards` references. This makes it so that only one suit can have a certain value, once the value is removed from `cards`, the other suits cannot have that value. For example, if the first card moved into a players hand was a 6 of :hearts, then no other suit could have a 6 card. 

This happens because `cards.pop` is a mutating method, and all of the `deck` hash's values point to the same collection object that the local variable `cards` points to. Once a value is removed, it is gone for all suits.

To mitigate this, it would be best to initialize each key of `deck` with its own different collection object referencing possible values, so that methods that mutate the value do not influence all of the values of `deck`.





````ruby
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         :diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         :clubs    => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
         :spades   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace] }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum
````

