Choices = ["rock", "paper", "scissors"]

puts 'Rock, paper or scissors'
draws = wins = losses = 0
3.times do
  begin
    puts "Choose rock paper or scissors!"
    response = gets.chomp.downcase
  end until Choices.include?(response)

  ruby_choice = rand(3)

  puts "You chose #{response}, Ruby chose #{Choices[ruby_choice]}"

  if response == Choices[ruby_choice]
    puts "Tie"
    draws += 1
  elsif response == Choices[ruby_choice - 1]
    puts "Ruby Wins!"
    losses += 1
  else
    puts "You Win!"
    wins += 1
  end
end
puts "wins : #{wins}\nlosses : #{losses}\ndraw:    #{draws}"
if wins > losses
  puts "You won the game, because you are awesome."
elsif wins < losses
  puts "You lost!"
else
  puts "We both won!"
end
