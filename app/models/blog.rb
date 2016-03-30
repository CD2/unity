class Blog < ActiveRecord::Base

  mount_uploader :banner, ImageUploader

  default_scope { order('published_date DESC') }

  validates :name, presence: true

end
