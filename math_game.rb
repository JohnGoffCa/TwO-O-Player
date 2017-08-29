module MathGame
  class Game
    def initialize
      @player1 = Player.new
      @player2 = Player.new
      @current = 1
    end
    
    attr_accessor(:current)

    def loop
      while @player1.lives > 0 && @player2.lives > 0
        if @current == 1 
          Turn.new(@player1, @current).play
          @current = 2
        else 
          Turn.new(@player2, @current).play
          @current = 1
        end
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      end
      puts '-----GAME OVER-----'
      puts 'Good Bye!'
    end
  end
end
