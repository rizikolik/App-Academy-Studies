class Home < ApplicationRecord
    has_many :dogs,
    primary_key: :id,
    foreign_key: :home_id,
    class_name: :Dog
end