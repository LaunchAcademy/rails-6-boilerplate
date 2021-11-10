class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :color
      t.integer :rating

      t.timestamps
    end
  end
end
