class RenameImageColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :image, :room_image
    rename_column :users, :image, :user_image
  end
end
