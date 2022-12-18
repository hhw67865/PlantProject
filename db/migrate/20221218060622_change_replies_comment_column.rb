class ChangeRepliesCommentColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :replies, :comment, :reply
  end
end
