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

  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy
    redirect_to ships_path, status: :see_other
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :model, :user_id, :cost, :length, :atmospheric_speed, :crew, :passengers)
  end
end
