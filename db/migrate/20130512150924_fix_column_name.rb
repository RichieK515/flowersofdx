class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :products, :admin_id, :creator_admin_id
  end
end
