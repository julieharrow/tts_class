
deck = []
  suits = %w[Hearts Diamonds Clubs Spades]
  values = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
  suits.each do |suit|
    values.each do |value|
      deck << "#{value} of #{suit}"
    end
  end
  deck.shuffle!
  puts deck.join(",")

puts "Choose how many players?"
players = gets.chomp.to_i

def deal_cards (players, num_cards, deck)
  num_cards.times do
  for i in 1..num_players
    puts "Player #{i}, your card is #{deck.pop}"
  end
end
end

deal_cards(num_players)

deal_cards(players,2,deck)
p deck
