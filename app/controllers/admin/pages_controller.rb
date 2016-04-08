class Admin::PagesController < AdminController

  set_resource Page
  add_fields :title, :path

  add_index_columns :title

  add_action '+ Add New', :new

  show_index_view do | page |
    page.path
  end

  set_create_redirect 'edit'

end