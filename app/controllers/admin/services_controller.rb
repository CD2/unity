class Admin::ServicesController < AdminController

  set_resource Service

  add_fields :name, :teaser_body, :header, :body

  add_field :banner, type: :file_field
  add_field :teaser_image, type: :file_field

  add_index_column :name

  show_index_view

  add_action '+ Add New', :new

end