class CreateUbss < ActiveRecord::Migration[5.2]
  def change
    create_table :ubsses do |t|
      t.integer :id
      t.string :name
      t.string :adderess
      t.string :city
      t.string :phone
    end
  end
end
