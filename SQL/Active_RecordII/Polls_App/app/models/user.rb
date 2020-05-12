class User <ApplicationRecord

    
    
end
# == Schema Information
#
# Table name: users
#
#  id         :integer(8)      not null, primary key
#  username   :string          not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

validates :username, presence:true,uniqueness: true
    
has_many :authered_polls,
primary_key: :id,
foreign_key: :author_id,
class_name: :Question
 
has_many :responses,
primary_key: :id,
foreign_key: :respondent_id,
class_name: :Response