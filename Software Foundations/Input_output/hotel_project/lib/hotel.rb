require_relative "room"

class Hotel
    def initialize(name,oda)
        @name=name
       @rooms={}
       oda.each do |k,v|
           rooms[k]=Room.new(v)
        end
        
    end
    def name
        @name.split.map(&:capitalize).join(" ")
    end
    def rooms
    @rooms
    end
    def room_exists?(isim)
            @rooms.has_key?(isim)
            
    end
    def check_in(person,room_name)
        if self.room_exists?(room_name)
                    if @rooms[room_name].add_occupant(person)
                    puts 'check in successful'
                    else
                        puts 'sorry, room is full'
                    end
        else   
            puts 'sorry, room does not exist'
        end
    
    end
    def has_vacancy?
        @rooms.values.any? { |room| !room.full? }
       
    end
    def list_rooms
        @rooms.each{|key,value| puts "#{key} :#{value.available_space}"}
       
    end

  
end
