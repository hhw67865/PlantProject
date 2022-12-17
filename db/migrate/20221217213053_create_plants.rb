class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :symptoms
      t.text :soil_mix
      t.text :harvest

      t.timestamps
    end
  end
end
