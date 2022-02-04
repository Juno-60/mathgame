require './question.rb'
require './players.rb'

class Game
  def initialize
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
    @turn_number = 1
    @current_player = @player_1
    puts "\nWELCOME TO THE MATH GAME!\nEach player has 3 lives. Good Luck!"
  end

  def play
    while (@player_1.player_lives > 0 && @player_2.player_lives > 0)
      puts "\n--- QUESTION #{@turn_number} ---"
      current_question = Question.new
      puts "Player #{@current_player.player_id}, what is #{current_question.problem_string}"
      player_input = gets.chomp.to_i
      
      if player_input === current_question.problem_solution
        puts "\nPlayer #{@current_player.player_id} is CORRECT, The answer is: #{current_question.problem_solution}"
      else
        puts "\nPlayer #{@current_player.player_id} is WRONG! The answer is: #{current_question.problem_solution}"
        @current_player.player_lives -= 1
        puts "\n--------LIVES---------"
        puts " P1: #{@player_1.player_lives}/3 -vs- P2: #{@player_2.player_lives}/3 "
        puts "----------------------"
      end
      
      if @player_1.player_lives == 0
        puts "\nPlayer 2 Wins!"
      end

      if @player_2.player_lives == 0
        puts "\nPlayer 1 Wins!"
      end

      # increment turn number regardless of outcome
      @turn_number += 1
      
      # re-assign player id
      @current_player = @current_player == @player_1 ? @player_2 : @player_1

    end

    puts "\n---GAME OVER---"

  end
  
end