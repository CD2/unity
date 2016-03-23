class AddBannerImageToService < ActiveRecord::Migration
  def change
    add_column :services, :banner_image, :string
  end
end
