class Code
      attr_reader:pegs
      POSSIBLE_PEGS = {
        "R" => :red,
        "G" => :green,
        "B" => :blue,
        "Y" => :yellow
      }
     
      def initialize(pegs)
      if Code.valid_pegs?(pegs)
        @pegs = pegs.map(&:upcase)
      else
        raise "There was an error"
      end
      end
    
      def  self.valid_pegs?(array)
   
      array.all?{|ele| Code::POSSIBLE_PEGS.include?(ele.upcase)}
      end

      def self.random(length)
      rando= Array.new(length) { Code::POSSIBLE_PEGS.keys.sample }
        Code.new(rando)
      end
      
      def self.from_string(str)
        arr=str.split("")
        Code.new(arr)
      end

      def [](index)
      @pegs[index]
      end

      def length
        @pegs.length
      end
      
      def num_exact_matches(instanc)
        num=0
        instanc.pegs.each.with_index do |key,i|
            if @pegs[i]==key
              num+=1
            end
        end
        num
      end

      def num_near_matches(instanc)
        count=instanc.pegs.count{|ele| @pegs.include?ele}
       count- num_exact_matches(instanc)
                     
      end

      def ==(other_code)
        self.length == other_code.length && self.num_exact_matches(other_code) == self.length
      end


end
