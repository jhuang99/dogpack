class AddNameToDog < ActiveRecord::Migration
  def change
  	add_column :dogs, :name, :string
  	add_column :dogs, :age, :int
  end
end
