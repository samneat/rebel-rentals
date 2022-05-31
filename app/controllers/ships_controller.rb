class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship.user = current_user
    if @ship.save
      redirect_to ship_path(@ship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def edit
    @ship = Ship.find(params[:id])

  end

  def update
    @ship = Ship.find(params[:id])
    if @ship.update(ship_params)
      redirect_to ship_path(@ship)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :description, :user_id, :crew, :weapons, :strengths, :weaknesses)
  end
end
