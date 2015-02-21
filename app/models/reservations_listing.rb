class ReservationsListing < ActiveRecord::Base
  validates :quantity, presence: true
  belongs_to :listing
  belongs_to :reservation
end
