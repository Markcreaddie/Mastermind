class Mastermind
    attr_accessor :player1, :player2, :board, :answer, :guess, :rounds
    def initialize(player1,player2,board)
        self.player1=player1
        self.player2=player2
        self.board=board
        self.rounds=4
    end

    def correct_answer?
        answer==guess
    end

    def play()
        self.answer= player2.make_pattern
        puts "#{player2.name} player has chosen a pattern"
        p answer
        sleep(2)
        (1..rounds).each do |round|
            puts "Make guess #{round} of 4."
            self.guess= player1.make_guess
            unless self.correct_answer?
                sleep(1)
                puts "Wrong guess. Try again"
                sleep(1)
                next
            end
            puts "CONGRATULATIONS!! Your guess was RIGHT."
            break
        end
        p guess
    end
end

