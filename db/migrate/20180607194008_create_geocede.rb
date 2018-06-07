class CreateGeocede < ActiveRecord::Migration[5.2]
  def change
    create_table :geocedes do |t|
      t.decimal :lat
      t.decimal :lomg
      t.references :ubss, foreign_key: true
    end
  end
end
