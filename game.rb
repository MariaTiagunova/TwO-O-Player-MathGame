require_relative 'player'
require_relative 'math_question'

  # Initialize players and the question generator
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
question = MathQuestion.new

# Initialize game variables like current player and scores
current_player = player1

# Implement the game loop
while true
  # Generate and present the math question
  question.generate_question
  puts "#{current_player.name}: What does #{question.num1} + #{question.num2} equal?"
  # Get and validate the player's answer
  answer = gets.chomp
  if question.check_answer(answer)
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
  # Update the scores based on the result
    current_player.decrease_life
  end
  # Check if the game is over (one player has lost all lives)
  if player1.number_of_lives == 0 || player2.number_of_lives == 0
  # If it's over, declare the winner and display the score
   winner = (player1.number_of_lives == 0) ? player2 : player1
   puts "#{winner.name} wins with a score of #{winner.number_of_lives}/3!"
   # Break out of the loop if the game is over
  break
  end
  # Display scores for both players at the end of the turn
  puts "#{player1.name}: #{player1.number_of_lives}/3 vs #{player2.name}: #{player2.number_of_lives}/3"
  # Switch the current player for the next turn
  current_player = (current_player == player1) ? player2 : player1
end





