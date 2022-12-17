class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :picture_url
      t.belongs_to :post, foreign_key: true
      t.belongs_to :plant, foreign_key: true
      t.belongs_to :bug, foreign_key: true
      t.belongs_to :disease, foreign_key: true

      t.timestamps
    end
  end
end
