module Validate
    def validate_numbers_in_correct_order(answer,guess)
        unvalidated=[]
        wrong_order=[]
        (0...answer.length).each do |i|
            if answer[i]==guess[i]
                feedback.push("c")
            else
                unvalidated.push(answer[i])
                wrong_order.push(guess[i])
            end
        end
        return unvalidated,wrong_order
    end

    def validate_existing_numbers(unvalidated,wrong_order)
        missing=[]
        unvalidated.each do |number|
            if wrong_order.include?(number)
                feedback.push("w")
                wrong_order.delete_at(wrong_order.index(number))
            else
                missing.push("number")
            end
        end
        return missing
    end
    def validate_missing_numbers(missing)
        missing.each{|number| feedback.push("e")}
    end
end

