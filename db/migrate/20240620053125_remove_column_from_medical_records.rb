class RemoveColumnFromMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    remove_column :medical_records, :Non_pathological_personal_history, :text
  end
end
