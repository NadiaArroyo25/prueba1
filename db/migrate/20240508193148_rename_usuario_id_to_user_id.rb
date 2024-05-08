class RenameUsuarioIdToUserId < ActiveRecord::Migration[7.1]
  def change
    rename_column :medical_records, :usuario_id, :user_id
  end
end
