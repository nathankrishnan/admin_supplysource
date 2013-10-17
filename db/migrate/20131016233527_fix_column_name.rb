class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :meats, :supplier_name, :supplier_id
  end
end
