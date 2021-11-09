class Breed < ApplicationRecord
  validates :name, :description, presence: true
end