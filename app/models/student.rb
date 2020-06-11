class Student < ApplicationRecord
  has_many :ducks

  validates :name, presence: true
  validates :mod, numericality: {less_than_or_equal_to: 5}
  validates :mod, numericality: {greater_than: 0}

  def ducks
    Duck.all.select{|d| d.student == self}
  end
end
