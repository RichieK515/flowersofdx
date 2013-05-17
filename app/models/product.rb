class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :pri_color, :sec_color, :quantity_avail, :image

  validates :name, presence: true
  validates :creator_admin_id, presence: true
  validates :lastedit_admin_id, presence: true
  validates_attachment :image, presence: true,
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  														 size: { less_than: 2.megabytes }

  belongs_to :admin
  has_attached_file :image, styles: { :medium => "320x240>", :thumb => "160x120>" }

  has_many :categories
end
