class UpdateReservationListingsTable < ActiveRecord::Migration
  def change
    rename_table :reservation_listings, :reservations_listings
  end
end
