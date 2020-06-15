class Cat < ApplicationRecord
  
    def initialize(birth_date)
        @birth_date=birth_date
    def age
        Time.now.year -@birth_date.year
    end

end
