class Boat < ApplicationRecord
  has_many :reviews
  belongs_to :user
end
