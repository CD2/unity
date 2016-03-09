class Service < ActiveRecord::Base
  mount_uploader :teaser_image, ImageUploader

  has_many :blocks, as: :page
  
end
