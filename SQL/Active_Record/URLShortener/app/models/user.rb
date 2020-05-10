class User < ApplicationRecord
    has_many :submitted_urls,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ShortenedUrl

     has_many :visited_urls,
     through: :visits,
     source: :ShortenedUrl
    validates :email ,presence:true, uniqueness: true

 

      

end

