class MedicalRecord < ApplicationRecord
  belongs_to :patient
  validates :notes, presence: { message: "es obligatorio" }
end
