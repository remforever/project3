class CreateLeagues < ActiveRecord::Migration
  def self.up
    create_table :leagues do |t|
      t.string :name_league
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :leagues
  end
end
