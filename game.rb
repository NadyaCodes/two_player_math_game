require_relative './player'

class Game

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @players = [@player1, @player2]
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @correct_answer = num1 + num2
    puts "Player #{@current_player.number}: What does #{num1} plus #{num2} equal?"
    @user_answer = gets.chomp
  end

  def is_answer_correct?
    @correct = false
    if @correct_answer == @user_answer.to_i
      @correct = true
      puts "Player #{@current_player.number}: Yes! You got it right!"
      sleep 0.7
    else
      @current_player.points -= 1
      puts "Player #{@current_player.number}: Seriously, you can't math? You're wrong btw..."
      sleep 0.7
    end
  end

  def print_stats
    puts "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3"
    sleep 0.7
  end

  def next_question
    @players.rotate!(1)
    puts " ------ NEW TURN ------"
    @current_player = @players[0]
    sleep 0.7
  end

  def game_over?
    @player1.lost? || @player2.lost?
  end

  def end_game
    winner = @players.detect { | player | !player.lost?}
    puts "Player #{winner.number} wins with a score of #{winner.points}/3"
    puts " ------ GAME OVER ------"
    sleep 0.7
    puts "Good bye!"
  end



  def play
    puts " ------ WELCOME TO THE GAME ------"
    @current_player = @players[0]
    generate_question
    is_answer_correct?
    print_stats

    until (game_over?) do
    next_question
    generate_question
    is_answer_correct?
    print_stats

    end
    end_game
  end

end
