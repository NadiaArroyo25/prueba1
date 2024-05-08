class AddUserIdToMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    user = User.first || User.create(email: "temporary_email@example.com", password: "atemporal", password_confirmation: "atemporal")
    add_reference :medical_records, :user, null: true, foreign_key: true, default: user.id

    change_column_default :medical_records, :user_id, nil

  end
end
