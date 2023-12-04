class CreateMedicalRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :medical_records do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :patology
      t.text :habits
      t.string :current_state, default: "Aparentemente sano"

      t.timestamps
    end
  end
end
