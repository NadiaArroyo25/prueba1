class Appointment < ApplicationRecord
  validate :delimitation_of_appointment_time
  validates :title, presence: { message: "es obligatorio" }
  validates :start_time, presence: { message: "es obligatorio" }

  private

  def delimitation_of_appointment_time
    if start_time.present? && start_time < Time.now
      errors.add(:start_time, "No se pueden agregar citas en el pasado.")
    end
  end
end
