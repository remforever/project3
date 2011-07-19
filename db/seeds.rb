# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
# Refinery seeds
Country.delete_all
Country.create([{:name=>"England"}, {:name=>"Italy"}, {:name=>"Spain"}])
League.delete_all
League.create([{:name_league=>"Premier League", :country_id=>Country.first},
               {:name_league=>"Football League Championship", :country_id=>Country.first},
               {:name_league=>"Football League One", :country_id=>Country.first},
               {:name_league=>"Football League Two", :country_id=>Country.first},
               {:name_league=>"Primera", :country_id=>Country.last}])


Dir[Rails.root.join('db', 'seeds', '*.rb').to_s].each do |file|
  puts "Loading db/seeds/#{file.split(File::SEPARATOR).last}"
  load(file)
end
