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
        result=PlayDBConnection.instance.execute(<<-SQL,title)
        SELECT*FROM plays WHERE title=?
        SQL
    end

    def self.find_by_playwright(name)
        result=PlayDBConnection.instance.execute(<<-SQL,name)
        SELECT * FROM plays JOIN playwrights ON plays.playwright_id = playwrights.id WHERE name = ?
        SQL
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
        data=PlayDBConnection.instance.execute("SELECT*FROM playwrights")
        data.map{|datum| Playwright.new(datum)}
    end
    def self.find_by_name(name)
        result=PlayDBConnection.instance.execute(<<-SQL,name)
        SELECT*FROM playwrights WHERE name=?
        SQL
    end
    def initialize(options)
        @id=options['id']
        @name=options['name']
        @birth_year=options['birth_year']
    end
     def create
        raise "#{self} is on the list already.." if @id
        PlayDBConnection.instance.execute(<<-SQL,@name,@birth_year)
        INSERT INTO
        playwrights
        (name,birth_year)
        VALUES
        (?,?)
       

        SQL
        @id=PlayDBConnection.instance.last_insert_row_id
     end
     def update
        raise "#{self} is NOT on the list ." unless @id
        PlayDBConnection.instance.execute(<<-SQL,@name,@birth_year,id)
        UPDATE
        playwrights
        SET
        name=?,birth_year=?
        WHERE
        id=?
        SQL
        self
     end
     def get_plays
        plays=PlayDBConnection.instance.execute(<<-SQL,@id)
        SELECT*FROM plays WHERE playwrights_id=?
        SQL
        plays.map{|play| Play.new(play)}
     end

