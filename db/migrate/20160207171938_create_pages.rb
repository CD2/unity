class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :path
      t.string :layout, :default => 'page'
      
      t.timestamps null: false
    end
  end
end
