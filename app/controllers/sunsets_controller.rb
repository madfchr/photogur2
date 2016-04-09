class SunsetsController < ApplicationController
  def index
    @sunsets = Sunset.all
  end

  def show
    @sunset = Sunset.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a sunset. URL : #{params[:url]}, Title: #{params[:title]}, City: #{params{:city}}"
  end

end
