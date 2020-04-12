class Card
    $vals=("A".."Z").to_a
    def self.shuffled_pairs(num_pairs)
        values = VALUES
    
        while num_pairs > values.length
          values = values + values
        end
    
        values = values.shuffle.take(num_pairs) * 2
        values.shuffle!
        values.map { |val| self.new(val) }
      end
    attr_accessor :face_Value
    attr_reader :face
    def initialize(face=false,face_Value)
    @face=false
    @face_Value

    end
    def hide
        @face=false

    end
    def reveal
        @face=true
    end
    def revealed?
        @face
    end
    def to_s
revealed? ? face_Value.to_s : " "
    end
    def ==(object)
        object.is_a?(self.class) && object.value == value
      end
end
na=Card.new(true,"A")
p na