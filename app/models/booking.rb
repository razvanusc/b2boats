class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  enum status: { pending: 0, cancelled: 1, confirmed: 2, archived: 3 }
end
