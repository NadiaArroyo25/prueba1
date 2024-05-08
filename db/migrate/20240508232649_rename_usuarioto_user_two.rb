class RenameUsuariotoUserTwo < ActiveRecord::Migration[7.1]
  def change
    rename_table :usuarios, :users
  end
end
