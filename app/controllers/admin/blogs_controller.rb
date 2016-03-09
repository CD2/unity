class Admin::BlogsController < AdminController

  after_action :populate_tags, only: ['create', 'update']


  set_resource Blog

  add_fields :name, :body, :published

  add_field :banner, type: :file_field

  add_index_columns :name

  add_index_column :published do |published|
    (if published then '&check;' else '&cross;' end).html_safe
  end

  add_index_column :tags do |_, blog|
    blog.tags.map { |tag| tag.name }.join ', '
  end

  show_index_view

  add_action '+ Add New', :new


  private
    def populate_tags
      @blog = @resource
      @blog.blog_tags.destroy_all
      if params[:tags]
        params[:tags].each do |key, value|
          if value=="1"
            tag = Tag.find_by(machine_name: Tag.to_machine_name(key))
            tag = Tag.create!(name: key) if tag.nil?
            @blog.blog_tags.create!(tag_id: tag.id)
          end
        end
      end
      Tag.cleanup
    end

end