class ArtworkShares <ApplicationRecord
    belongs_to :viewer , class_name: "User",foreign_key: "viewer_id"
    belongs_to :artwork
   
end

