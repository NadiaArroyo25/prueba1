class RemoveCategoriaIdFromArticulos < ActiveRecord::Migration[7.1]
  def change
    remove_column :articulos, :categoria_id, :text
  end
end
