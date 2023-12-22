class AutorsController < ApplicationController

  before_action :set_autor, only: [:show]
  def index
    @autors = Autor.all
    render json:  @autors, each_serializer: AutorSerializer
  end

  def show
    render json: @autor
  end

  private
  def set_autor
    @autor = Autor.find(params[:id])
  end
end

