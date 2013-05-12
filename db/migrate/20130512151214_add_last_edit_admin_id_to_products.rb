class AddLastEditAdminIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :lastedit_admin_id, :integer
    add_index :products, :lastedit_admin_id
  end
end
