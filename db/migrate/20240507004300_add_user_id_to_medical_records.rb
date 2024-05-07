class AddUserIdToMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    user = Usuario.first || Usuario.create(email: "temporary_email@example.com", password: "atemporal", password_confirmation: "atemporal")
    add_reference :medical_records, :usuario, null: true, foreign_key: true, default: user.id

    change_column_default :medical_records, :usuario_id, nil

  end
end
