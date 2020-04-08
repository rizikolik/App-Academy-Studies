require_relative("passenger")

class Flight
    attr_reader :passengers
    def initialize(num,capacity)
        @flight_number=num
        @capacity=capacity
        @passengers=[]
    end

    def full?
        return true if @passengers.length== @capacity
        false
    end
    def board_passenger(ins)
       return false if full?
        if ins.has_flight?(@flight_number)
       return @passengers << ins
       end
       false
    
    end

    def list_passengers
        passengers.map{|k| k.name}
    end
    def [](number)
    passengers[number]
    end

    def <<(inst)
board_passenger(inst)
    end

    

end