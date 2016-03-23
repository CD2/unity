class Admin::ServicesController < AdminController

  set_resource Service

  add_fields :name
  add_field :weight
  add_field :color, type: :color_field
  add_field :teaser_image, type: :file_field
  add_fields :teaser_body, :header, :body


  # add_index_column :weight do |weight, service|
  #   ("<select data-id='#{service.id}' name='weight'>" + Service.count.times.map { | i | "<option value='#{i}' #{'selected' if i==weight-1}>#{i}</option>"}.join('') + '</select>').html_safe
  # end
  add_index_column :name
  add_index_column :weight, 'Order'

  show_index_view

  add_action '+ Add New', :new

  def update_weight
    Service.all.each_with_index do |s, i|
      s.weight = params[:order][i.to_s].to_i
      s.save!
    end
    espond_to do |format|
      format.json { head :ok }
    end
  end

end