class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
   
    has_many :authored_polls
    has_many :responses
 
end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string          not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

