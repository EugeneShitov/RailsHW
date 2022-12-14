class Tag < ApplicationRecord
  has_and_belongs_to_many :articles

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
end
