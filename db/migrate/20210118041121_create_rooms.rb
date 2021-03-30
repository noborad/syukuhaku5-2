class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :introduction
      t.integer :cost
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
