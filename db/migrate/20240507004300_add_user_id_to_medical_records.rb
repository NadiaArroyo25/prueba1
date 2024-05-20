class AddUserIdToMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    add_reference :medical_records, :usuario, null: true, foreign_key: true, default: 1

    change_column_default :medical_records, :usuario_id, nil

  end
end
