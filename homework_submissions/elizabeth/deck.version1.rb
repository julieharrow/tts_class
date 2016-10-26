def deal (deck,hand)
  2.times do
      hand<<deck
  end  #this doesn't work when more than 3 players.
  deck.shuffle
end

deck = [
'2 of Hearts', '2 of Diamonds', '2 of Spades', '2 of Clubs',
'3 of Hearts', '3 of Diamonds', '3 of Spades', '3 of Clubs',
'4 of Hearts', '4 of Diamonds', '4 of Spades', '4 of Clubs',
'5 of Hearts', '5 of Diamonds', '5 of Spades', '5 of Clubs',
'6 of Hearts', '6 of Diamonds', '6 of Spades', '6 of Clubs',
'7 of Hearts', '7 of Diamonds', '7 of Spades', '7 of Clubs',
'8 of Hearts', '8 of Diamonds', '8 of Spades', '8 of Clubs',
'9 of Hearts', '9 of Diamonds', '9 of Spades', '9 of Clubs',
'10 of Hearts', '10 of Diamonds', '10 of Spades', '10 of Clubs',
'J of Hearts', 'J of Diamonds', 'J of Spades', 'J of Clubs',
'Q of Hearts', 'Q of Diamonds', 'Q of Spades', 'Q of Clubs',
'K of Hearts', 'K of Diamonds', 'K of Spades', 'K of Clubs',
'A of Hearts', 'A of Diamonds', 'A of Spades', 'A of Clubs',
]


shuffled_deck = deck.shuffle

puts "How many players in this game?"
num_players = gets.chomp.to_i
(1..num_players).each do |i|
  puts "Player #{i}'s Hand:"
  puts deal(shuffled_deck) #the homework version is different from this.
end
