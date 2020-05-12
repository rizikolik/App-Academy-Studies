class AnswerQuestion < ApplicationRecord
    belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

    has_many :responses,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :Response


end
# == Schema Information
#
# Table name: answer_questions
#
#  id          :integer(8)      not null, primary key
#  text        :string          not null
#  question_id :integer(4)      not null
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

