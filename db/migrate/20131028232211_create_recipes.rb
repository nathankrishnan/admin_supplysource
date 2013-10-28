class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :ingredient1_id
      t.integer :ingredient2_id
      t.integer :ingredient3_id
      t.integer :ingredient4_id
      t.integer :ingredient5_id
      t.integer :ingredient6_id
      t.integer :ingredient7_id
      t.integer :ingredient8_id
      t.integer :ingredient9_id
      t.integer :ingredient10_id
      t.integer :ingredient11_id
      t.integer :ingredient12_id
      t.integer :ingredient13_id
      t.integer :ingredient14_id
      t.integer :ingredient15_id
      t.integer :ingredient16_id
      t.integer :ingredient17_id
      t.integer :ingredient18_id
      t.integer :ingredient19_id
      t.integer :ingredient20_id

      t.timestamps
    end
  end
end
