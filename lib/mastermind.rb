class Mastermind
    attr_accessor :player1, :player2, :board
    def initialize(player1,player2,board)
        self.player1=player1
        self.player2=player2
        self.board=board
    end

    def play()
        player1.make_pattern
        puts "#{player1.name} has chosen a pattern"
        sleep(2)
        puts "Make a guess"
        player1.make_guess
    end
end

