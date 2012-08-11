class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.boolean :free
      t.string :slug

      t.timestamps
    end
    add_index :videos, :slug, :unique => true
  end

  def self.down
    drop_table :videos
  end
end
