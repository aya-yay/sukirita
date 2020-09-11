class KoesController < ApplicationController
  before_action :set_method, only: [:edit, :show]
  before_action :move_to_index, except: :index


  def index
    @koes = Koe.includes(:user).order("created_at DESC")
    @koe = Koe.new
    # koe = Koe.find(params[:id])
  end

  def new
    @koe = Koe.new
  end


  def create
    @koe = Koe.new(koe_params)
    @koe.valid?
    @koe.save
    # binding.pry

    redirect_to action: :index
    # if @koe.valid?
    #    @koe.save
  end

  def show
  end

  def edit
  end

  def update
    koe = Koe.find(params[:id])
    koe.update(koe_params)
    redirect_to koes_path
  end

  def destroy
    koe = Koe.find(params[:id])
    koe.destroy
    redirect_to koes_path
  end



  private
  # def koe_params
  #   params.permit(:text).merge(user_id: current_user.id)
  # end
  def koe_params
    params.require(:koe).permit(:text, :id, :created_at, :updated_at).merge(user_id: current_user.id)
  end

  def set_method
    @koe = Koe.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
