require_relative "pattern"
class Player
    include Pattern

    attr_accessor :name
    def initialize(name)
        self.name=name
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
            player_input=self.get_input
            pattern.push(player_input)
        end
        pattern
    end

end

