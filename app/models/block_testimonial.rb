class BlockTestimonial < ActiveRecord::Base

  belongs_to :testimonial

  has_one :block, as: :specialised_block

  def render
    ApplicationController.new.render_to_string(
      :partial => 'common/testimonial',
      :locals => {testimonial: self.testimonial}
    )
  end

end