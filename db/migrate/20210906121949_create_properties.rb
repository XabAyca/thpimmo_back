class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :photo
      t.references :user, index: true
      t.references :category, index: true  

      t.timestamps
    end
  end
end
