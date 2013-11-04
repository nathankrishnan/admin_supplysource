class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
      t.string :email
      t.string :password_hash
      t.integer :track
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :flag_1
      t.integer :flag_2
      t.integer :flag_3
      t.integer :flag_4
      t.integer :flag_5

      t.timestamps
    end
  end
end
