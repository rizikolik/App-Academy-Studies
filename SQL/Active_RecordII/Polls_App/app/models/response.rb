class Response < ApplicationRecord

    belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User
end
# == Schema Information
#
# Table name: responses
#
#  id               :integer(8)      not null, primary key
#  responded_id     :integer(4)
#  answer_choice_id :integer(4)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

