class Property < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :location

  validates :title, presence: true, length: { in: 3..50 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 100..1000 }
end
