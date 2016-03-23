class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :teaser_body
      t.string :teaser_image
      t.text :header
      t.text :body
      t.string :color

      t.timestamps null: false
    end
  end
end
