class ReservationsListing < ActiveRecord::Base
  validates :quantity, :subtotal, presence: true
  belongs_to :listing
  belongs_to :reservation
end
