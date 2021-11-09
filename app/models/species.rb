class Species < ApplicationRecord
  validates :name, :description, presence: true
end