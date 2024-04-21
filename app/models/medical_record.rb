class MedicalRecord < ApplicationRecord
  belongs_to :patient
  has_one_attached :image
end
