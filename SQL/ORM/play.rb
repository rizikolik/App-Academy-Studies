require('sqlite3')
require('singleton')

class PlayDBConnection < SQLite3 ::Database
    include singleton

    def initialize
        super(plays.db)

    end
end




clasS PLay
def self.all 
end
def initialize
end
def create
end
def update
end
end
