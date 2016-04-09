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

  def edit
    @sunset = Sunset.find(params[:id])
  end

  def update
    @sunset = Sunset.find(params[:id])

    if @sunset.update_attributes(sunset_params)
      redirect_to "/sunsets/#{@sunset.id}"
    else
      render :edit
    end
  end

  def destroy
    @sunset = Sunset.find(params[:id])
    @sunset.destroy
    redirect_to sunsets_url
  end

  private
  def sunset_params
    params.require(:sunset).permit(:title, :city, :url)
  end
end
