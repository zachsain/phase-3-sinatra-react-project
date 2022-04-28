class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :comment
      t.boolean :liked
      t.string :category_id
    end 
  end
end
