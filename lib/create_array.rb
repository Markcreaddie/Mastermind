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
end
