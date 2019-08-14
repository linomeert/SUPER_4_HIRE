class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(user: current_user)
    @pending_bookings = @bookings.where.not(accepted: true)
    @accepted_bookings = @bookings.where(accepted: true)
  end

  def new
    @booking = Booking.new

    # @superhero = params[:superhero_id]
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.accepted = false
    @booking.user = User.find(params[:user_id])
    @booking.superhero = Superhero.find(params[:superhero_id])
    if @booking.save
      redirect_to user_superhero_bookings_path(current_user, @booking)
    else
      render :new
    end
  end

  def acceptbooking
    raise
    @booking = booking
    @booking.accepted = true
    @booking.save
    render index
  end

  def show
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.accepted = true
    @booking.save
    redirect_to user_superhero_bookings_path
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
    params.require(:booking).permit(:start_date, :end_date, :description, :user_id, :superhero_id, :action)
  end
end
