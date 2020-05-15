class Question < ApplicationRecord

    validates :text , presence:true
    belongs_to :poll
    has_many   :answer_choices
    has_many :responses,
    through: :answer_choices,
    source: :responses
    def results_n_plus_1
        # N+1 way:
    results = {}
    self.answer_choices.each do |ac|
      results[ac.text] = ac.responses.count
    end
    results
    end

    def results_2_queries
        # 2-queries; all responses transferred:
        results = {}
        self.answer_choices.includes(:responses).each do |ac|
          results[ac.text] = ac.responses.length
        end
        results
      end
      def results_sql_version
         # 1-query way all SQL
            acs = AnswerChoice.find_by_sql([<<-SQL, id])
              SELECT
                answer_choices.text, COUNT(responses.id) AS num_responses
              FROM
                answer_choices
                LEFT OUTER JOIN responses
                  ON answer_choices.id = responses.answer_choice_id
              WHERE
                answer_choices.question_id = ?
              GROUP BY
                answer_choices.id
            SQL
        
            acs.inject({}) do |results, ac|
              results[ac.text] = ac.num_responses; results
            end
          end
end