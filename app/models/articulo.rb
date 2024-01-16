class Articulo < ApplicationRecord
    belongs_to :autor
    validates :titulo, presence: true 
    validates :contenido, presence: true, length: {minimum:50}


end
