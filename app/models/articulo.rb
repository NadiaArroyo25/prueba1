class Articulo < ApplicationRecord
  belongs_to :autor
  has_many :comentarios, dependent: :destroy
  validates :titulo, presence: { :message => "no puede estar vacío" }
  validates :contenido, presence: { :message => "no puede estar vacío"}, length: {minimum:50, :message => "es demasidado corto"}
end
