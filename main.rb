require_relative('lib/rock_paper_scissors')

puts 'To exit this program type \'leave\''
puts 'To see how many wins, losses, or ties type the previous commands with \'??\' on the end'
wins = 0
losses = 0
ties = 0
while true
  puts 'Plaese type \'rock\', \'paper\', or \'scissors\''
  input = gets.chomp
  choices = ["rock", "paper", "scissors"]
  computers_choice = choices.shuffle.first
  game = RPS.new()
  if game.wins?(input, computers_choice) == true
    wins += 1
  end
  choices.each do |item|
    if input == item
      if game.wins?(input, computers_choice) == false
        losses += 1
      end
    end
  end
  choices.each do |item|
    if input == item
      if !game.wins?(input, computers_choice) == false
        if !game.wins?(input, computers_choice) == true
          ties += 1
        end
      end
    end
  end
  if input == "losses??"
    puts losses
  end
  if input == "ties??"
    puts ties
  end
  if input == "wins??"
    puts wins
  end
  if input == "leave"
    break
  end
end
