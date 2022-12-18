class ChangeLikesToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :replies,:likes,:integer
  end
end
