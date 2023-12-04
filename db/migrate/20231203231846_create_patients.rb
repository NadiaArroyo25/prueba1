class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.integer :age
      t.string :genre

      t.timestamps
    end
  end
end
