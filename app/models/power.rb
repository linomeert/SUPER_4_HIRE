class Power < ApplicationRecord
  has_many :superheros

  validates :name, presence: :true
  validates :description, presence: :true
end
