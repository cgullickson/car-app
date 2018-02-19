class Car < ApplicationRecord
  has_many :awards
  belongs_to :user
  validates_presence_of :make, :model, :year, :color
end
