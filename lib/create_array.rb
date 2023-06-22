module CreateArray
    def insert_second_num(first_num,second_num)
        array=[]
        (0...first_num.quantity).each do |n|
            array.push(first_num.id)
        end
        second_num_quantity=4-first_num.quantity
        (0...second_num_quantity).each do |n|
            array.push(second_num.id)
        end
        array
    end
    def pair_of_two_nums(guess,first_num,second_num)
        def modify_select_num(select_num,guess)
            select_num_indices=guess.map.with_index{|num,index| index if  num==select_num.id}.compact
            select_num.valid_positions.push(select_num_indices[0])
            select_num_indices.each{ |index| select_num.unvisited_positions.delete(index)}
        end
        modify_select_num(first_num,guess)
        modify_select_num(second_num,guess)

        first_num.unvisited_positions.delete(second_num.valid_positions[0])
        second_num.unvisited_positions.delete(first_num.valid_positions[0])
        guess=Array.new(4)
        def update_guess(guess,select_num)
            guess[select_num.valid_positions[0]]=select_num.id
            guess[select_num.unvisited_positions[0]]=select_num.id
        end
        update_guess(guess,first_num)
        update_guess(guess,second_num)
        guess
    end
end
