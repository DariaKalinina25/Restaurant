class CavesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @caves = Cafe.all
  end

  def show
    @cafe = Cafe.find(params[:id])
  end

  def new
    @cafe = current_user.caves.build
  end

  def create
    @cafe = current_user.caves.build(cafe_params)
    if @cafe.save
      redirect_to @cafe, notice: 'Cafe was successfully created.'
    else
      render :new
    end
  end

  private

  def cafe_params
    params.require(:cafe).permit(:name, :description, :menu)
  end
end
