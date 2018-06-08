class CreateGeocede < ActiveRecord::Migration[5.2]
  def change
    create_table :geocedes, id: false do |t|
      t.decimal :lat
      t.decimal :long
      t.belongs_to :ubses, index: true
    end
  end
end
