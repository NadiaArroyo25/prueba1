class Patient < ApplicationRecord
    has_many :medical_records
    validates :first_name, presence: { message: " es obligatorio" }
    validates :last_name, presence: { message: " es obligatorio" }
    validates :age, presence: { message: " es obligatoria" }
end
