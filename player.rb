module MathGame
  class Player
    def initialize
      @ans = 0
      @lives = 3
    end

    attr_reader(:ans)
    attr_accessor(:lives)

    def set_ans
      @ans = gets.chomp.to_i
    end
  end
end
