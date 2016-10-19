def deal_cards (num_cards,num_cards,deck)
  for i in 1..num_players
    puts deck.pop
end
end


deck = []
ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
suits = %w{Spades Hearts Diamonds Clubs}

suits.each do |suit|
  ranks.size.times do |rank|
    deck << "#{suit} of #{rank}"
  end
end

deck.shuffle!

puts "Hello human. How many players do you have?"
player_response = gets.chomp.to_i
player_response.each do |i|
  puts "Player #{i} Hand: "
puts deal_cards(num_players,2,deck)
end
