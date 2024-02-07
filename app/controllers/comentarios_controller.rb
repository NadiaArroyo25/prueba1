class ComentariosController < ApplicationController
  before_action :set_articulo, only: %i[ create  destroy ]
 
  def create
    #@comentario = Comentario.new(comentario_params)se elimina esto
    #para asociarlo al articulo creamos la variable instancia para poner el articulo al que hacemos referencia
    #y otra comentario donde guardamos el comentario pra guardarlo  haciendolo pertener a articulo
    @comentario = @articulo.comentarios.create(comentario_params)
    redirect_to (@articulo)
  end

  # DELETE /comentarios/1 or /comentarios/1.json
  def destroy
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy

    redirect_to @articulo
  end

  private
  
    def comentario_params
      params.require(:comentario).permit(:nombre, :texto, :articulo_id)
    end
    def set_articulo
   @articulo = Articulo.find(params[:articulo_id])
    end 
end
