class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :user_image, UserImageUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  has_many :rooms
  has_many :reservations
  has_many :reserved_rooms, through: :reservations, source: :rooms

  # mount_uploader :image, ImageUploader
end
