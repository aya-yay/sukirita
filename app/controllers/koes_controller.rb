class KoesController < ApplicationController
  def index
    @koes = Koe.all.order(id: "DESC") 
  end


  def create
    binding.pry
    Koe.create(koe_params)
    redirect_to action: :index
  end

  private
  def koe_params
    params.permit(:text).merge(user_id: current_user.id)
  end

end
