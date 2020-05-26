class Artwork <ApplicationRecord
    belongs_to :artist
    has_many :artwork_shares
    has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer
    validates :title, :image_url, :artist_id,  presence: true
  validates :title, uniqueness: { scope: :artist }

    def shared_viewers
      Artwork.shared_viewers

    end
end