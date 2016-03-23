class Admin::UsersController < AdminController

  set_resource User

  add_fields :name, :email
  add_hidden_field :password

  add_index_column :name
  add_index_column :email

  add_action '+ Add New', :new

end