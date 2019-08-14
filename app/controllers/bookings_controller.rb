class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @user = current_user
  end

  def new
    @booking = Booking.new

    # @superhero = params[:superhero_id]
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.find(params[:user_id])
    @booking.superhero = Superhero.find(params[:superhero_id])
    if @booking.save
      redirect_to user_superhero_bookings_path(current_user, @booking)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:start_date, :end_date, :description)
  end
end
