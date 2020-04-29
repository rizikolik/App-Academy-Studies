require 'sqlite3'
require 'singleton'

class QuestionsDataBase <SQLite3::Database
    def initialize
        super("questions.db")
        self.results_as_hash = true
    
        self.type_translation = true
    end
end

class User
        attr_accessor :fname, :lname
        def self.find_by_id(id)
            result=QuestionsDataBase.instance.execute(<<-SQL ,id)
            SELECT*FROM users
            WHERE id=?
            SQL
            User.new(result.first)
        end

        def self.find_by_name(fname,lastname)
            result=QuestionsDataBase.instance.execute(<<-SQL ,fname,lastname)
            SELECT*FROM users
            WHERE fname=? AND lname=?
            SQL
            User.new(result.first)

        def initialize(options)
            @id=options['id']
            @fname=options['fname']
            @lname=options['lname']
        end
        def authored_questions
            Question.find_by_id(self.id)
        end
        def authored_replies
            Reply.find_by_id(self.id)
        end
        def liked_questions
            QuestionLike.liked_questions_for_user_id(self.id)
        
        end
    
        def followed_questions
            QuestionFollow.followed_questions_for_user_id(self.id)
        end
        
end






class Question
    def self.find_by_id(id)
        questions=QuestionsDataBase.instance.execute(<<-SQL,id)
        SELECT*FROM questions
        WHERE id=?
        SQL
        Question.new(questions.first)
    end
    def self.find_by_author_id(author_id)
        questions=QuestionsDataBase.instance.execute(<<-SQL,id)
        SELECT*FROM questions
        WHERE author_id=?
        SQL
        Question.new(questions.first)
    end
    def inialize(options)
        @id=options["id"]
        @title=options["title"]
        @body=options["body"]
        @user_id=options["user_id"]
    end
    def author
        User.find_by_id(self.author_id)
    end
    def replies 
    
    end
     
    def following_users

    end
    def liked_users

    end
end

class QuestionFollow
end


class   QuestionLike
end
class Reply
end

    


