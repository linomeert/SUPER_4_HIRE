class Booking < ApplicationRecord
  belongs_to :superhero
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :description, presence: true
end
