class Student < ApplicationRecord
    has_many :ducks

    validates :mod, numericality: { greater_than: 0, less_than: 6  }
    validates :name, presence: true
end
