class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores, id: false do |t|
      t.integer :size
      t.integer :adaptation_for_seniors
      t.integer :medical_equipment
      t.integer :medicine
      t.belongs_to :ubses, index: true
    end
  end
end
