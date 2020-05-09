class Dog < ApplicationRecord
    validates :name ,presence:true

    
    has_many :toys,
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Toy

    belongs_to :home,
    primary_key: :id,
    foreign_key: :home_id ,
    class_name: :Home   

    def self.measure_search_time_in_ms(name)
        start=Time.now
        Dog.where(name: name)
        (Time.now-start)*1000

    end
    
             
end