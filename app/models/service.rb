class Service < ActiveRecord::Base

  default_scope { order('weight ASC') }

  mount_uploader :teaser_image, ImageUploader
  mount_uploader :banner_image, ImageUploader

  has_many :blocks, as: :page

end
