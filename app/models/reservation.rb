class Reservation < ActiveRecord::Base
  validates :user_id, :start_date, :end_date, :listing_id, presence: true
  belongs_to :listing
  belongs_to :user
  scope :pending, -> { where(status: "pending") }
  scope :past, -> { where(status: "past") }
  scope :approved, -> { where(status: "approved") }
  scope :cancelled, -> { where(status: "cancelled") }

  def cart_data
    {
      start_date: start_date,
      end_date: end_date,
      user_id: user_id,
      listing_id: listing_id
    }
  end
end
