class CreatePlantDiseases < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_diseases do |t|
      t.belongs_to :plant, null: false, foreign_key: true
      t.belongs_to :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
