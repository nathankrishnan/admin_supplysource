class AddScancountToMeats < ActiveRecord::Migration
  def change
    add_column :meats, :scancount, :integer
  end
end
