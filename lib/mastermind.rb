class Mastermind
    attr_accessor :player1, :player2, :board, :rounds
    def initialize(player1,player2,board)
        self.player1=player1
        self.player2=player2
        self.board=board
        self.rounds=12
    end

    def correct_answer?
        player1.answer==player2.guess
    end

    def play()
        player1.answer= player1.make_pattern
        puts "#{player1.name} player has chosen a pattern"
        #p player1.answer
        sleep(1)
        (1..rounds).each do |round|
            puts "Make guess #{round} of #{rounds}."
            player2.guess= player2.make_guess(player1.feedback)
            p player2.guess 
            unless self.correct_answer?
                sleep(1)
                puts "Wrong guess. Try again"
                feedback= player1.give_feedback(player2.guess)
                sleep(1)
                next
            end
            puts "CONGRATULATIONS!! Your guess was RIGHT."
            break
        end
    end
end

