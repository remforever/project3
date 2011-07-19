class FootballMatch < ActiveRecord::Base
  belongs_to :league


  belongs_to :team1, :class_name=> "Team"
  belongs_to :team2, :class_name=> "Team"
#
#  define_index do
#    indexes league.name_league
#    indexes team1.team_name #, :as=>:account_name
#    indexes team2.team_name #, :as=>:account_name
#    has team1_id,team2_id,league_id,round :sortable=>true
#    #set_property :delta=> true
#  end

end
