class AddDogToWalk < ActiveRecord::Migration
  def change
    add_reference :walks, :dog, index: true, foreign_key: true
  end
end
