class SunsetsController < ApplicationController
  def index
    @sunsets = Sunset.all
  end

  def show
    @sunset = Sunset.find(params[:id])
  end
end
