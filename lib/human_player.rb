require_relative "player"

class HumanPlayer<Player
    def initialize(name)
        super(name)
    end
    def give_input
        valid_value=false
        until valid_value==true
            input= gets.chomp
            unless input==input.to_i.to_s
                puts "'#{input}' is not a valid choice. Enter a number between 0-6"
                next
            end
            input = input.to_i
            unless input>=0 && input <=6
                puts "'#{input}' is not a valid choice. Enter a number between 0-6"
                next
            end
            valid_value=true
        end
        input
    end
    def make_pattern()
        pattern = []
        input_prompts=[
            "Enter first number:",
            "Enter second number:",
            "Enter third number:",
            "Enter forth number:"
        ]
        input_prompts.each do |prompt|
            puts prompt
            player_input=self.give_input
            pattern.push(player_input)
        end
        pattern
    end
    def make_guess(feedback)
        self.make_pattern()
    end

end

