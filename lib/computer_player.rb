require_relative("player")

class ComputerPlayer<Player
    attr_accessor :pattern

    def initialize()
        super("Computer")
    end
    def make_pattern()
        self.pattern=[]
        4.times do |i|
            input=rand(0..6)
            pattern.push(input)
        end
        pattern
    end
    def make_guess()
        self.make_pattern()
    end

end