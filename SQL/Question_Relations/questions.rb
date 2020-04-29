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
        def save
            if self.id
                QuestionsDataBase.instance.execute(<<-SQL,self.fname, self.lname, self.id)
                UPDATE
                users
                SET
                fname=? ,lname=? WHERE id=?
                SQL

            else
                QuestionsDatabase.instance.execute(<<-SQL, self.fname, self.lname)
                INSERT INTO users (fname, lname)
                VALUES (?, ?)
              SQL
        
              self.id = QuestionsDatabase.instance.last_insert_row_id
            end
            self

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

        def average_karma
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
    def self.most_liked(n)
    end
    def inialize(options)
        @id=options["id"]
        @title=options["title"]
        @body=options["body"]
        @user_id=options["user_id"]
    end
    def save
        if self.id
            QuestionsDataBase.instance.execute(<<-SQL,self.title, self.body,self.user_id, self.id)
            UPDATE
            questions
            SET
            title=? ,bodye=? , user_id=?  WHERE id=?
            SQL

        else
            QuestionsDatabase.instance.execute(<<-SQL, self.title, self.body,self.user_id)
            INSERT INTO users (title,body,user_id)
            VALUES (?, ?,? )
          SQL
    
          self.id = QuestionsDatabase.instance.last_insert_row_id
        end
        self

    end

    def author
        User.find_by_id(self.author_id)
    end
    def replies 
        Reply.find_by_question_id(self.id)
    
    end
     
    def following_users
        QuestionFollow.followers_for_question_id(self.id)

    end
    def liked_users
       QuestionLike.likers_for_question_id(self.id)
    end
    def num_likes
        QuestionLike.num_likes_for_question_id(self.id)
    end
end

class Reply

    attr_accessor :id, :body , :owner_id , :parent_id ,:question_id
    def self.find_by_id(id)
    end
    def self.find_by_question_id(question_id)
    end
    def initialize(options)
        @id=options["id"]
        @body=options["body"]
        @owner_id=options["owner_id"]
        @parent_id=options["parent_id"]
        @question_id=options["question_id"]
    end

    def save
        if self.id
            QuestionsDataBase.instance.execute(<<-SQL,self.body, self.owner_id, self.parent_id,self.question_id,self.id)
            UPDATE
            replies
            SET
            body=? ,owner_id=? ,parent_id=?, question_id=?  WHERE id=?
            SQL

        else
            QuestionsDatabase.instance.execute(<<-SQL, self.body, self.owner_id,self.parent_id,self.question_id)
            INSERT INTO replies (body, owner_id,parent_id,question_id )
            VALUES (?,?,?, ?)
          SQL
    
          self.id = QuestionsDatabase.instance.last_insert_row_id
        end
        self

    end

    def author
        User.find_by_id(self.owner_id)
    end
    def question
        Question.find_by_id(self.question_id)
    end
    def parent_reply
        Reply.find_by_id(self.id)
    end
    def child_replies
        replies=QuestionsDataBase.instance.execute(<<-SQL,self.id)
        SELECT*FROM replies
        WHERE reply_id=?

        SQL
        replies.map{|reply| Reply.new(reply)}
    end
end


class QuestionFollow
    def self.find_by_id(id)
    end
    def self.followers_for_question_id(question_id)
    end
    def self.followed_questions_for_user_id(user_id)
    end

    def initialize(options)
        @id=options["id"]
        @user_id=options["user_id"]
        @question_id=["question_id"]
    end
end


class   QuestionLike
    attr_accessor : :id, :user_id, :question_id
    def self.find_by_id(id)
    end
    def self.likers_for_question_id(question_id)
    end
    def self.num_likes_for_question_id(question_id)
    end
    def self.liked_questions_for_user_id(user_id)
    end
    def initialize(options)
        @user_id=options["user_id"]
        @question_id=options["question_id"]
    end
    def most_liked_questions(n)
    end

end


    


