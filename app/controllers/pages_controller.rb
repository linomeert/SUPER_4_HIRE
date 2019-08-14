class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @superhero = Superhero.all.take(5)
  end
end
