class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @ship = Ship.find(params[:ship_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def confirm
    @booking = Booking.find(params[:booking_id])
    @ship = Ship.find(params[:ship_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @ship = Ship.find(params[:ship_id])
    @booking.user = current_user
    @booking.ship = @ship
    if @booking.save!
      redirect_to ship_booking_confirmation_path(@ship, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @pending_bookings = Booking.where(user: current_user, accepted: false)
  end

  def edit
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @ship = Ship.find(params[:ship_id])
    if @booking.update(booking_params)
      redirect_to my_bookings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @ship = Ship.find(params[:ship_id])
    @booking.accepted = params[:accepted]
    @booking.save
    redirect_to my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :ship_id, :start_date, :end_date)
  end
end
