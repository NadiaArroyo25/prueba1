class AddUserIdToMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    user = User.first || User.create(email: "temporary_email@example.com", password: "pass", password_confirmation: "pass")
    add_reference :medical_records, :usuario, null: true, foreign_key: true, default: user.id
    change_column_default :medical_records, :usuario_id, nil


    change_column_null :medical_records, :usuario_id, false

  end
end
