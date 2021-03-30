class Room < ApplicationRecord
    mount_uploader :room_image, RoomImageUploader
    validates :name, {presence: true}
    validates :address, {presence: true}
    validates :cost, {presence: true}
    validates :introduction, {presence: true, length:{maximum: 140}}
    validates :room_image, {presence: true}

    def self.search(search)
      if search
        Room.where(['address LIKE ?', "%#{search}%"])
      else
        Room.all
      end
    end

    def self.keyword_search(search)
      if search
        Room.where(['name LIKE ?', "%#{search}%"])
      else
        Room.all
      end
    end

    

    has_many :reservations
    belongs_to :user
end
