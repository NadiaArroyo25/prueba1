class MedicalRecord < ApplicationRecord
  belongs_to :patient

  attr_accessor :image_location
end
