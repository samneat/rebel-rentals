class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @ship = Ship.find(params[:ship_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @ship = Ship.find(params[:ship_id])
    @booking.user = current_user
    @booking.ship = @ship
    if @booking.save!
      redirect_to ships_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :ship_id, :start_date, :end_date)
  end
end
