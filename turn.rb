module MathGame
  class Turn
    def initialize(player, current)
      @currPlay = player
      @current = current
    end

    def rand_nums
      [rand(20) + 1, rand(20) + 1]
    end

    def play
      first, second = rand_nums
      puts '-----NEW TURN-----'
      puts "Player #{@current}, what is #{first} plus #{second}?"
      if @currPlay.set_ans != first + second
        puts 'Seriously? NO!!'
        @currPlay.lives -= 1;
      else
        puts 'YES! That\'s correct! Congrats'
      end
    end
  end
end
