class Cat < ApplicationRecord
    has_many :toys
    validates :name ,presence:true

end
