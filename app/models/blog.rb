class Blog < ActiveRecord::Base

  mount_uploader :banner, ImageUploader

  default_scope { order('created_at DESC') }

  validates :name, presence: true

end
