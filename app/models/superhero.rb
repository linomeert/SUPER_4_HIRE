class Superhero < ApplicationRecord
  belongs_to :power
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :bio, presence: true
  validates :image, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :image, PhotoUploader
end
