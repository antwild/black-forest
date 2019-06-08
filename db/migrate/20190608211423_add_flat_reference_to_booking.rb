class AddFlatReferenceToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :flats, foreign_key: true
  end
end
