class Service < ActiveRecord::Base
  mount_uploader :banner, ImageUploader

  has_many :blocks, as: :page
  
end
