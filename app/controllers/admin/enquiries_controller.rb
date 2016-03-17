class Admin::EnquiriesController < AdminController

  set_resource Enquiry
  
  add_fields :name, :email, :phone, :body

  add_index_column :name
  add_index_column :body, 'Message' do |body|
    body.truncate(50)
  end

  show_index_view do |x|
    "enquiries/#{x.id}"
  end

end