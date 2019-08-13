class RemoveDatetimeFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :datetime, :string
  end
end
