
def deal(deck, hand, num_cards)
  (0..num_cards-1).each do |i|
    hand<<deck[0]
  end
  deck.shift(num_cards)
end

ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
suits = %w{Spades Hearts Diamonds Clubs}
suits.each do |suit|
  ranks.size.times do |i|
    stack_of_cards << Card.new( ranks[i], suit, i+1 )
  end
end

shuffled_deck = deck.shuffle
stack
puts "Hello human. How many players do you have?"
player_response = gets.chomp.to_i
(1..player_response).each do |i|
  puts "Player #{i}'s Hand: '"
  p deal(shuffled_deck, [], 2)
end
