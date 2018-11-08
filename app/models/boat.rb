class Boat < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence:true, uniqueness: true
  validates :description, presence:true
  validates :price_per_hour, presence:true
  validates :hours, presence:true
  validates :capacity, presence:true
  validates :category, presence:true
  validates_inclusion_of :has_license, in: [true, false]
end
