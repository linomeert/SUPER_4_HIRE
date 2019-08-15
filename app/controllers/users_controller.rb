class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  @superheroes = Superhero.where(user: current_user)
  end

  def edit
  end

  def save
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
