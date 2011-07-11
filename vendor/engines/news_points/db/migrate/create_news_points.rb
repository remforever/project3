class CreateNewsPoints < ActiveRecord::Migration

  def self.up
    create_table :news_points do |t|
      t.string :title
      t.text :content
      t.integer :cover_id
      t.integer :position

      t.timestamps
    end

    add_index :news_points, :id

    load(Rails.root.join('db', 'seeds', 'news_points.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "news_points"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/news_points"})
    end

    drop_table :news_points
  end

end
