class StaticasController < ApplicationController
  def contact
  end

  def nosotros
    @mensaje="Hola desde el controler"
    @usuarios= ['pablo', 'maria', 'Silvia',"Daniel "]
  end

  def otra
  end
end
