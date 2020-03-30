require_relative "team"
require_relative "player"

player1=Player.new("Bob",12,3);player2=Player.new("Tim",22,4)
player3=Player.new("adam",11,4); player4=Player.new("can",13,2)
player5=Player.new("Ala",20,6)

red_Team=Team.new("red")
red_Team.add_players(player1,player2,player3,player4,player5)

eligible_players=red_Team.select{|player| player.age>12}
                          .reject{|player| player.skill_level<4}

 p eligible_players                         

