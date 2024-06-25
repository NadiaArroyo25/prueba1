class RenameColumInMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    rename_column :medical_records, :toxicological_habits, :non_pathological_personal_record
  end
end
