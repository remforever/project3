class League < ActiveRecord::Base
  belongs_to :country
  has_many :teams
end
