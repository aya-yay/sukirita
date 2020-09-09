class KoesController < ApplicationController
  def index
    @koes = Koe.all.order(id: "DESC") 
  end


  def create
    # binding.pry
    Koe.create(text: params[:text])
    redirect_to action: :index
  end
end
