class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.string :network
      t.string :day
    end
  end
end
