class AddDogIndexToWalks < ActiveRecord::Migration
  def change
  	 add_column :walks, :belongs_to, :dog, index:true
  end
end
