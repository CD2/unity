class Admin::ServicesController < AdminController

  set_resource Service

  add_fields :name, :body

  add_field :banner, type: :file_field

  add_index_column :name

  show_index_view

  add_action '+ Add New', :new

end