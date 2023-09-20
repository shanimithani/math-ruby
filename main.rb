require_relative './players'
require_relative './game'

player1 = Players.new(3, 0, 1)
player2 = Players.new(3, 0, 2)

game = Game.new()
game.add_players(player1)
game.add_players(player2)

game.init_game

while game.winner == nil
  puts "----- NEW TURN -----"
  game.change_question
  puts "Player #{game.current_player.player_number}: #{game.curr_question[:question]}"
  answer = gets.chomp.to_i
  if answer == game.curr_question[:answer]
    puts "YES! You are correct."
    game.increase_player_score(game.current_player)
  else
    puts "Seriously? No!"
    game.reduce_player_life(game.current_player)
  end

  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  game.change_player
  if(game.check_winner)
    game.display_winner
  end
end