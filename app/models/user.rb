class User < ApplicationRecord
  has_many :boats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  def bookings_for_boats
    #find all the boats and the bookings belonging to the boats
    boats.map do | boat|
      boat.bookings
    end.flatten
  end
end
