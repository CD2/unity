class Admin::TestimonialsController < AdminController

  set_resource Testimonial
  add_fields :author, :quote



  add_index_column :author
  add_index_column :quote do | quote |
    quote.truncate(50)
  end

  add_action '+ Add New', :new

end