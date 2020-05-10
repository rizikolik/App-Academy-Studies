
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

    has_many :tag_topics,
    through: :taggings,
    source: :tag_topic
    
    has_many :taggings,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :Tagging

   

  


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

            def self.prune(time)
                visits.where('created_at > ?',time.minutes.ago).length

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
            def no_spamming
                last_minute = ShortenedUrl
                .where('created_at >= ?', 1.minute.ago) #Check this users submitted urls length in last 1 minute.
                .where(submitter_id: submitter_id)
                .length

                errors[:maximum] << 'of five short urls per minute' if last_minute >= 5
            end
            def nonpremium_max
                return if User.find(self.submitter_id).premium
                total = ShortenedUrl
                .where(submitter_id: submitter_id And )
                .length

                errors[:Only] << 'You have to be a premium member for  more..' if total >=5
            end

           
             
            

   
    
end