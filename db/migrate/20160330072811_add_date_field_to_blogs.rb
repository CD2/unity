class AddDateFieldToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :published_date, :datetime
  end
end
