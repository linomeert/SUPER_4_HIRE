class AddAcceptedToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :accepted, :boolean
  end
end
