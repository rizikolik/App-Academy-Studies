class Visit <ApplicationRecord
    validates :user ,:shortened_url , presence:true
    belongs_to :user
    belongs_to :shortened_url
    def self.record_visit!(user, shortened_url)
        Visit.create!(user_id: user.id, shortened_url_id: shortened_url.id)
      end
end