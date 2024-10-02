class AddColumnsToMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    add_column :medical_records, :reason_consultation, :text
    add_column :medical_records, :toxicological_habits, :text
    add_column :medical_records, :Non_pathological_personal_history, :text
    add_column :medical_records, :hereditary_family_history, :text
  end
end
