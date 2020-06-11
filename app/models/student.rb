class Student < ApplicationRecord
    has_many :ducks

    validates :name, presence: true 
    # (validates :mod, numericality:  { :greater_than => 0 }) 
    validates :mod, numericality: { less_than: 6 }
    validates :mod, numericality: { greater_than: 0 }
    # validates :mod, :inclusion => {in: [1,2,3,4,5]} 

end
