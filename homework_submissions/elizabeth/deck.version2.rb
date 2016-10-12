

puts "Hello human. How many players do you have?"
player_response = gets.chomp.to_i
(1..player_response).each do |i|
  puts "Player #{i}'s Hand: '"
  p deal(shuffled_deck, [], 2)
end
