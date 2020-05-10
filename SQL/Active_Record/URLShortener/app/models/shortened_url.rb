
class ShortenedUrl < ApplicationRecord
    validates :short_url,uniqueness: true
    def self.random_code
        
        short=nil
       while short==nil||ShortenedUrl.exist?(short_url:short)
        short=SecureRandom.urlsafe_base64
       end
       short
    end
    def create_shortened_url(user,long_url)
        ShortenedUrl.create!(
            long_url: long_url,
            short_url: ShortenedUrl.random_code,
            user_id: user.id
          )

    end
    
end