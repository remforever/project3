class CreateBets < ActiveRecord::Migration

  def self.up
    create_table :bets do |t|
      t.integer :football_match_id
      t.integer :win1
      t.integer :draw
      t.integer :win2
      t.datetime :date_start
      t.string :result
      t.string :match_result
      t.integer :position

      t.timestamps
    end

    add_index :bets, :id

    load(Rails.root.join('db', 'seeds', 'bets.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "bets"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/bets"})
    end

    drop_table :bets
  end

end
