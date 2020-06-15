class Cat < ApplicationRecord
    validates :size, inclusion: { in: %w(small medium large),
        message: "%{value} is not a valid size" }
    def initialize(birth_date)
        @birth_date=birth_date
    def age
        Time.now.year -@birth_date.year
    end

end
