class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :title
      t.integer :category_id
      t.integer :character_id
      t.string :slug

      t.timestamps
    end
    add_index :videos, :slug, :unique => true
  end

  def self.down
    drop_table :videos
  end
end
