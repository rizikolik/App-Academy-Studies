class TagTopic <ApplicationRecord
    validates :name, presence: true

    has_many :taggings,
    primary_key: :id,
    foreign_key: :tag_topic_id,
    class_name: :Tagging,
    dependent: :destroy

  has_many :shortened_urls,
    through: :taggings,
    source: :shortened_url
    def popular_links
      shortened_urls.joins(:visits)
      .group(:short_url, :long_url)
      .order('COUNT(visits.user_id) DESC')
      .select('long_url, short_url, COUNT(visits.user_id) as number_of_visits')
      .limit(5)

    end

end