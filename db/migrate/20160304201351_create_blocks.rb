class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :machine_name


      t.references :page, polymorphic: true
      t.references :specialised_block, polymorphic: true

      t.timestamps null: false
    end
  end
end
