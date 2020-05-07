class Dog < ApplicationRecord
    validates :name ,presence:true
    validate (:check_name_length)
    def check_name_length
     unless self.name.length>=4
        errors [:name] << "Something went wrong.Please try with a longer name"
    end
end
    has_many :toys,
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Toy

    belongs_to :home,
    primary_key: :id,
    foreign_key: :home_id ,
    class_name: :Home   
    
             
end