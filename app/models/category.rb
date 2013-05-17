class Category < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :product
end
