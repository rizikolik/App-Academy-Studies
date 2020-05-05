
class House <ApplicationRecord
    has_many :dogs,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Dog

    has_many   :toys,
    through:  :dogs,   #method_name/associatiation name
    source:   :toys

end