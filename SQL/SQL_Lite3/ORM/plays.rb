require'sqlite3'
require'singleton'

class PlayDBConnection<SQLite3::Database
    include Singleton

    def initialize
        super('plays.db')
        self.results_as_hash = true

        # otherwise all the data is returned as strings and not parsed into the
        # appropriate type.
        self.type_translation = true

    end
end




class Play
attr_accessor :title , :year , :playwright_id

    def self.all 
        data =PlayDBConnection.instance.execute("SELECT*FROM plays")
        data.map{ |datum|  Play.new(datum)}
    end
    def self.find_by_title(title)
    end

    def self.find_by_playwright(name)

    end
    def initialize(options)
        @id=options['id']
        @title=options['title']
        @year=options['year']
        @playwright_id=options['playwright_id']
        
    end
    def create
        raise ' #{self} already in the DB. Please try with a new entry.' if @id
        PlayDBConnection.instance.execute(<<-SQL, @title ,@year, @playwright_id )

            INSERT INTO 
            plays(title, year, playwright_id)
            VALUES
            (?,?,?)
            SQL
            @id=PlayDBConnection.instance.last_insert_row_id
    end
    def update
        raise '#{self} not in the DB. Please try again' unless @id
        PlayDBConnection.instance.execute(<<-SQL ,@title ,@year, @playwright_id, @id)
        UPDATE
        plays
        SET
        title=? ,year=?, playwright_id=?
        WHERE
        id=?
        SQL
        
    end


end

class Playwright
    def self.all
    end
    def self.find_by_name(name)
    end
    def new
    end
     def create
     end
     def update
     end
     def get_plays
     end
     
