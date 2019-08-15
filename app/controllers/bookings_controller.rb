class BookingsController < ApplicationController
  def index
    @user = current_user
    # @superhero = Superhero.find params[:superhero_id]

    @bookings = Booking.where(user: current_user)
    @pending_bookings = @bookings.where(accepted: nil)
    @accepted_bookings = @bookings.where("accepted = ? AND end_date < ?", true, Date.today)
    @rejected_bookings = @bookings.where(accepted: false)
    @past_bookings = @bookings.where("accepted = ? AND end_date > ?", true, Date.today)


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
      redirect_to superhero_path(@booking.superhero)
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
    if params[:query].present?
      @booking.accepted = true
      @booking.save
      redirect_to user_superhero_bookings_path
    else
      raise
    end
    @booking.accepted = params[:accepted] == "true"
    @booking.save
    redirect_to user_superhero_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id].to_i)
    @booking.destroy
    redirect_to user_superhero_bookings_path
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
