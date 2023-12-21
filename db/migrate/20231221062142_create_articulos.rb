class CreateArticulos < ActiveRecord::Migration[7.1]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.string :autor
      t.string :references

      t.timestamps
    end
  end
end
