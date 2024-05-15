class Appointment < ApplicationRecord
  add-state-machine
  validate :delimitation_of_appointment_time, on: :create
  state_machine :state, initial: :scheduled do
    state :scheduled
    state :finished
    state :postponed
    state :cancelled

    event :serve do
      transition from: :scheduled, to: :finished
    end
    event :postpone do
      transition from: :scheduled, to: :postponed
    end
    event :cancel do
      transition from: :scheduled, to: :cancelled
    end
  end
  
  validate :delimitation_of_appointment_time
  validates :title, presence: { message: "es obligatorio" }
  validates :start_time, presence: { message: "es obligatorio" 

  private

  def delimitation_of_appointment_time
    if start_time.present? && start_time < Time.now
      errors.add(:start_time, "No se pueden agregar citas en el pasado.")
    end
  end
end

