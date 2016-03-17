class Admin::TeamsController < AdminController

  set_resource Team

  add_fields :name, :position, :body

  add_index_column :name

add_action '+ Add New', :new

end