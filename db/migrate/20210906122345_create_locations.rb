class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name

      t.timestamps
    end
    add_reference :properties, :location, foreign_key: true
  end
end
