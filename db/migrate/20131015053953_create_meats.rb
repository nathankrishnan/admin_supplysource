class CreateMeats < ActiveRecord::Migration
  def change
    create_table :meats do |t|
      t.string :name
      t.integer :supplier_name
      t.string :thumbnail
      t.boolean :ab_free
      t.boolean :hormone_free
      t.boolean :wild_caught
      t.boolean :farm_grown
      t.boolean :artificial_color
      t.text :description
      t.text :growth_conditions

      t.timestamps
    end
  end
end
