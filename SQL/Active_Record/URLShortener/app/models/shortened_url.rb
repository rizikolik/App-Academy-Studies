
class ShortenedUrl < ApplicationRecord
    validates :short_url,uniqueness: true

    belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

    has_many :visitors,
      -> { distinct },
    through: :visits,
    source: :User

    has_many :visits,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :Visit
  


            def self.random_code
                    short=nil
                    while short==nil || ShortenedUrl.exists?(short_url: short)
                        short=SecureRandom.urlsafe_base64
                    end
                    short
            end
            def self.create_shortened_url!(user,long_url)
                ShortenedUrl.create!(
                    long_url: long_url,
                    short_url: ShortenedUrl.random_code,
                    user_id: user.id
                )

            end

          

            def num_clicks
               visits.count

            end
            def num_uniques
                visits.select('user_id').distinct.count
            end
            def num_recent_uniques
           
                visits.select('user_id').where('created_at > ?', 10.minutes.ago).distinct.count

            end
            

   
    
end