class Location < ApplicationRecord
  has_many :properties

  validates :name, presence: true
end
