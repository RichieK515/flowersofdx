class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :pri_color, :sec_color, :quantity_avail

  validates :name, presence: true

  belongs_to :admin
  validates :creator_admin_id, presence: true
  validates :lastedit_admin_id, presence: true
end
