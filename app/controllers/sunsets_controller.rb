class SunsetsController < ApplicationController
  def index
    @sunsets = Sunset.all
  end

  def show
    @sunset = Sunset.find(params[:id])
  end

  def new
    @sunset = Sunset.new
  end

  def create
    @sunset = Sunset.new(sunset_params)
    if @sunset.save
      redirect_to sunsets_url
    else
    render :new
    end
  end

  private
  def sunset_params
    params.require(:sunset).permit(:title, :city, :url)
  end
  
end
