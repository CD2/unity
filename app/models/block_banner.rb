class BlockBanner < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_one :block, as: :specialised_block

  def render
    ApplicationController.new.render_to_string(
      :partial => 'common/block_banner',
      :locals => {block: self}
    )
  end

end
