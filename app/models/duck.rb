class Duck < ApplicationRecord
    belongs_to :student
    validates :name, presence: :true
    validates :description, presence: :true

    def student_name
        self.student.name
    end
end
