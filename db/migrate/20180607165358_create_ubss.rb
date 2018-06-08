class CreateUbss < ActiveRecord::Migration[5.2]
  def change
    create_table :ubses, id: false do |t|
      t.integer :id
      t.string :name
      t.string :adderess
      t.string :city
      t.string :phone
    end
    add_index :ubses, :id, unique: true
  end
end
