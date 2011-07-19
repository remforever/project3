class CreateFootballMatches < ActiveRecord::Migration
  def self.up
    create_table :football_matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.integer :league_id
      t.integer :round

      t.timestamps
    end
  end

  def self.down
    drop_table :football_matches
  end
end
