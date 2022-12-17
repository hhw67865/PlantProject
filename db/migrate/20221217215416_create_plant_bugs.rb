class CreatePlantBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_bugs do |t|
      t.belongs_to :plant, null: false, foreign_key: true
      t.belongs_to :bug, null: false, foreign_key: true

      t.timestamps
    end
  end
end
