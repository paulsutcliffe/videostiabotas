class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :characters, :slug, :unique => true
  end

  def self.down
    drop_table :characters
  end
end
