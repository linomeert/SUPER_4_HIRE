class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :datetime
      t.datetime :end_date
      t.references :superhero, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
