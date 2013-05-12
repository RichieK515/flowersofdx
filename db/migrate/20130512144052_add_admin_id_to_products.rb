class AddAdminIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :admin_id, :integer
    add_index :products, :admin_id
  end
end
