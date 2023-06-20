require_relative "validate"

class Player
    include Validate
    attr_accessor :name, :feedback, :answer, :guess
    def initialize(name)
        self.name=name
        self.feedback=[]
    end

    def give_feedback(guess)
        unvalidated,wrong_order=self.validate_numbers_in_correct_order(answer,guess)
        missing=self.validate_existing_numbers(unvalidated,wrong_order)
        self.validate_missing_numbers(missing)
        p feedback
    end

end

