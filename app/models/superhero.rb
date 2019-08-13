class Superhero < ApplicationRecord
  belongs_to :power
  belongs_to :user
end
