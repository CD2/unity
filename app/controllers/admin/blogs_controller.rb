class Admin::BlogsController < AdminController

  set_resource Blog

  add_fields :name, :body

  add_field :banner, type: :file_field
  add_field :published_date, type: :date_field

  add_index_columns :name
  add_index_column :published_date do |date|
    date.strftime("%d %B %Y") if date
  end

  show_index_view

  add_action '+ Add New', :new

end