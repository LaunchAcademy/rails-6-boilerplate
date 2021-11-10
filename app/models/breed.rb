class Breed < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :pet
end