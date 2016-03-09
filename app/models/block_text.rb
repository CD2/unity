class BlockText < ActiveRecord::Base

  has_one :block, as: :specialised_block

  def render
    body
  end

  def render_edit form_helper
    form_helper.text_area :body
  end

end
