class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :category
      t.integer :track1_scancount
      t.integer :track2_scancount
      t.integer :track3_scancount
      t.boolean :packaged
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.boolean :gluten

      t.timestamps
    end
  end
end
