class AddStateToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :state, :string, default: "scheduled"
  end
end
