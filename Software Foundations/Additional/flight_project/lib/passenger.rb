class Passenger
    attr_reader :name

    def initialize(name)
        @name=name
        @flight_numbers=[]
    end
    def has_flight?(n)
        return true if @flight_numbers.include?(n.upcase)
        false
    end
    def add_flight(n)
        
       if !has_flight?(n)
        @flight_numbers << n.upcase
      end

       
    end


end