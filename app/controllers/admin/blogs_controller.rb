class Admin::BlogsController < AdminController

  set_resource Blog

  add_fields :name, :body

  add_field :banner, type: :file_field

  add_index_columns :name

  show_index_view

  add_action '+ Add New', :new

end