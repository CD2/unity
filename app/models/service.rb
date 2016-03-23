class Service < ActiveRecord::Base

  default_scope { order('weight ASC') }

  after_save :fix_order

  mount_uploader :teaser_image, ImageUploader

  has_many :blocks, as: :page

  def fix_order
    ::Service.all.each_with_index do |s, i|
      s.update_column(:weight, i+1)
    end
  end

end
