class AddFieldsToAppointments < ActiveRecord::Migration[7.1]
  # acuerdate que tuvist que cambiar el codigo aqui 
def change
    # Agrega las columnas restantes si aún no existen
    add_column(:appointments, :start_time, :datetime) unless column_exists?(:appointments, :start_time)
    add_column(:appointments, :end_time, :datetime) unless column_exists?(:appointments, :end_time)
  end
end
