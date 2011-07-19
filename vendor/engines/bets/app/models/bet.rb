class Bet < ActiveRecord::Base

  acts_as_indexed :fields => [:result, :match_result]

  validates :result, :presence => true, :uniqueness => true
  
end
