class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :position
      t.text :body
      t.string :color
      
      t.timestamps null: false
    end
  end
end
