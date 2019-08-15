class Superhero < ApplicationRecord
  belongs_to :power
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :bio, presence: true
  validates :image, presence: true
  mount_uploader :image, PhotoUploader
end
