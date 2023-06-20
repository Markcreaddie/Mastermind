require_relative("player")
require_relative("valid_number")
require_relative("create_array")

class ComputerPlayer<Player
    include CreateArray
    attr_accessor :pattern, :starting_num,:second_num, :third_num, :forth_num

    def initialize()
        super("Computer")
        self.starting_num=ValidNumber.new(0)
        
    end
    def make_pattern()
        self.pattern=[]
        4.times do |i|
            input=rand(0..6)
            pattern.push(input)
        end
        pattern
    end
    def make_guess(feedback)
        case 
        when feedback == []
            return Array.new(4,starting_num.id)
        when feedback == ['e', 'e', 'e', 'e']
            starting_num.id+=1
            return Array.new(4,starting_num.id)
        when feedback.include?("c") && self.guess.uniq.length==1
            starting_num.quantity+=feedback.count("c")
            self.second_num=ValidNumber.new(starting_num.id+1)
            return self.insert_second_num(starting_num,second_num)
        when feedback.count("c")==starting_num.quantity && !feedback.include?("w")
            self.second_num.id+=1
            return self.insert_second_num(starting_num,second_num)

        end
    end

end