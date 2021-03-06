class AddLocationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :lat, :decimal, :precision => 12, :scale => 6
    add_column :users, :lng, :decimal, :precision => 12, :scale => 6
    add_column :users, :zipcode, :string
  end

  def self.down
    remove_column :users, :lng
    remove_column :users, :lat
    remove_column :users, :zipcode
  end
end
