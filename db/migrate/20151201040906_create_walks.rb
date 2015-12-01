class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.string :title
      t.date :date
      t.text :description
      t.text :location

      t.timestamps null: false
    end
  end
end
