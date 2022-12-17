class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :name
      t.text :description
      t.text :prevention

      t.timestamps
    end
  end
end
