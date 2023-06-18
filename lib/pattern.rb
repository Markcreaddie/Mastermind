module Pattern
    def get_input
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
end

            
    