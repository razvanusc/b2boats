class Boat < ApplicationRecord
  has_many :reviews
  belongs_to :user

  validates :name, presence:true, uniqueness: true
  validates :description, presence:true
  validates :price_per_hour, presence:true
  validates :hours, presence:true
  validates :capacity, presence:true
  validates :has_license, presence:true
end
