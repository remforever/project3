class Team < ActiveRecord::Base
  belongs_to :league



  has_many :team1s,  :through => :football_matches
  has_many :team2s, :through => :football_matches
end
