module Pattern
    def get_input
        value_value=false
        until valid_value==true
            input= gets.chomp
            unless pattern==pattern.to_i.to_s
                puts "Enter a number between 0-6"
                next
            end
            input = input.to_i
            unless input>=0 && input <=6
                puts "Enter a number between 0-6"
                next
            end
            valid_value=true
        end
        input
    Pattern
    end
end

            
    