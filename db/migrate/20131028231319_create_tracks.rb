class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :description
      t.integer :calorie_max
      t.integer :calorie_min
      t.integer :carb_max
      t.integer :carb_min
      t.integer :fat_max
      t.integer :fat_min

      t.timestamps
    end
  end
end
