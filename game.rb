require "./player.rb"
require "./question.rb"

class Game

  def initialize
    @player1 = Player.new('Alice')
    @player2 = Player.new('Bob')
    @current_player = @player1
  end
  
  

  def start_game
    puts "Welcome to the TwO-O-Player Game !!!"
    puts "\n"
    puts "Player 1: Please enter your name:"
    @player1 = Player.new(gets.chomp)

    puts "Player 2: Please enter your name:"
    @player2 = Player.new(gets.chomp)
    
    puts "\n"
    puts "We are ready to play!"
    puts "\n"
    @current_player = @player1

    play_game while (@player1.life > 0 && @player2.life > 0)
    end_game
  end

  
  #taking turns
  def turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end 
  end


  def play_game
    question = Question.new
    puts "\n"
    puts "---- NEW TURN ----"
    puts "\n"
    puts "#{@current_player.name}: What does #{question.num1} plus #{question.num2} equal?"
    answer = gets.chomp.to_i

    if answer == question.result
      puts "\n"
      puts "YES! You are correct!"
      puts "\n"
    else
      puts "\n"
      puts "You are wrong!"
      @current_player.life -= 1
    end

    puts "\n"
    puts "The SCORE is: #{@player1.name}: #{@player1.life}/3 -VS- #{@player2.name}: #{@player2.life}/3"
    puts "\n"
    turn

  end

    def end_game
      puts "----- GAME OVER -----"
      puts "\n"
      puts "#{@current_player.name} wins the game with a score of #{@current_player.life}/3"
      puts "\n"
    end

  end


