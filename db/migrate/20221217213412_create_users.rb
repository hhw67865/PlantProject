class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.string :profile_picture
      t.text :description
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
