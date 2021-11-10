class Pet < ApplicationRecord
  validates :name, :description, presence: true

  has_many :breeds
end