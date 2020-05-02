# == Schema Information
#
# Table name: toysTOu
#
#  id     :bigint           not null, primary key
#  name   :string           not null
#  dog_id :integer          not null
#  color  :text             not null
#


class Toy < ApplicationRecord
    belongs_to :dog, 
      primary_key: :id, #dog's id
      foreign_key: :dog_id,
      class_name: :Dog
    
end
