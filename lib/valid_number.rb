class ValidNumber
    attr_accessor :id, :quantity, :unvisited_positions, :valid_positions
    def initialize(id)
        self.id=id
        self.quantity=0
        self.valid_positions=[]
        self.unvisited_positions=[0,1,2,3]
    end
end