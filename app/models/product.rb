class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :pri_color, :sec_color, :quantity

  validates :name, presence: true
end
