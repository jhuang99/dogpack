class ChangeUserColumn < ActiveRecord::Migration
  def change
  	rename_column :comments, :user_id, :dog_id
  end
end
