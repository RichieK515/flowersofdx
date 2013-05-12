class FixQuantityColumnName < ActiveRecord::Migration
  def change
  	rename_column :products, :quantity, :quantity_avail
  end
end
