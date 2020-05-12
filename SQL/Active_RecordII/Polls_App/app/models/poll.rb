class Poll < ApplicationRecord

belongs_to :author,
primary_key: :id,
foreign_key: :author_id,
class_name: :User
has_many :questions,
primary_key: :id,
foreign_key: :poll,
class_name: :Question
end
# == Schema Information
#
# Table name: polls
#
#  id         :integer(8)      not null, primary key
#  title      :string          not null
#  author_id  :integer(4)      not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

