class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.string :name
      t.text :description
      t.integer :product1_id
      t.integer :product2_id
      t.integer :product3_id
      t.integer :product4_id
      t.integer :product5_id
      t.integer :product6_id
      t.integer :product7_id
      t.integer :product8_id
      t.integer :product9_id
      t.integer :product10_id
      t.integer :product11_id
      t.integer :product12_id
      t.integer :product13_id
      t.integer :product14_id
      t.integer :product15_id
      t.integer :product16_id
      t.integer :product17_id
      t.integer :product18_id
      t.integer :product19_id
      t.integer :product20_id

      t.timestamps
    end
  end
end
