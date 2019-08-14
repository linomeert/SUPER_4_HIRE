class SuperherosController < ApplicationController
  before_action :set_superhero, only: [:show, :edit, :update]

  def index
    @superheros = Superhero.all
  end

  def new
    @superhero = Superhero.new
    @power = Power.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.power = Power.find(params[:superhero][:power_id])
    @superhero.user = User.find(params[:user_id])
    if @superhero.save
      redirect_to user_superhero_path(current_user, @superhero)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    @superhero.update(superhero_params)
    @superhero.save
    redirect_to superhero_path(@superhero)
  end

  def destroy
    @superhero.destroy
  end

  private

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:superhero).permit(:name, :bio, :image, :price_per_day, :power, :image)
  end
end
