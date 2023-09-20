class Game
  attr_accessor :questions, :players, :curr_question, :current_player, :winner

  def initialize()
    @questions = [
      {"question": "What is 2 plus 3?", "answer": 5},
      {"question": "What is 10 minus 7?", "answer": 3},
      {"question": "What is 6 multiplied by 4?", "answer": 24},
      {"question": "What is 15 divided by 3?", "answer": 5},
      {"question": "What is 9 plus 6?", "answer": 15},
      {"question": "What is 8 minus 4?", "answer": 4},
      {"question": "What is 7 multiplied by 2?", "answer": 14},
      {"question": "What is 18 divided by 2?", "answer": 9},
      {"question": "What is 5 plus 8?", "answer": 13},
      {"question": "What is 20 minus 10?", "answer": 10},
      {"question": "What is 9 multiplied by 3?", "answer": 27},
      {"question": "What is 16 divided by 4?", "answer": 4},
      {"question": "What is 12 plus 7?", "answer": 19},
      {"question": "What is 15 minus 9?", "answer": 6},
      {"question": "What is 4 multiplied by 6?", "answer": 24},
      {"question": "What is 21 divided by 7?", "answer": 3},
      {"question": "What is 10 plus 5?", "answer": 15},
      {"question": "What is 18 minus 12?", "answer": 6},
      {"question": "What is 8 multiplied by 3?", "answer": 24},
      {"question": "What is 30 divided by 5?", "answer": 6},
    ]  
    @players = []
    @current_player = []
    @curr_question = nil
    @winner = nil
  end

  def add_players(player)
    @players.push(player)
  end

  def init_game 
    puts "Welcome to the Math Quiz Game!"
    @current_player = players[0]
  end

  def increase_player_score(player)
    player.score += 1
  end

  def reduce_player_life(player)
    player.life_remaining -= 1
  end

  def change_player
    if current_player == players[0]
      @current_player = players[1]
    else
      @current_player = players[0]
    end
  end

    def change_question
      @curr_question = questions.sample
    end

    def check_winner
      if players[0].life_remaining == 0
        @winner = players[1]
      elsif players[1].life_remaining == 0
        @winner = players[0]
      end
    end

      def display_winner
        puts "----- GAME OVER -----"
        puts "Player #{winner.player_number} wins with a score of #{winner.score}/3"
        puts "Good bye!"
      end


end