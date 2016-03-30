class Blog < ActiveRecord::Base

  after_create :set_published_date

  mount_uploader :banner, ImageUploader

  default_scope { order('published_date DESC') }

  validates :name, presence: true

  def set_published_date
    self.published_date ||= Date.today
    self.save!
  end

end
