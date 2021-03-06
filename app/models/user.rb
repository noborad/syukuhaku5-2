class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :user_image, UserImageUploader



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  has_many :rooms, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reserved_rooms, through: :reservations, source: :rooms, dependent: :destroy

  # mount_uploader :image, ImageUploader
end
