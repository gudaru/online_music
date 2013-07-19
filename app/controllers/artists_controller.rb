class ArtistsController < ApplicationController
  def new
  	@artist = Artist.new
  end

  def show
  	@artist = Artist.find(params[:id])
  	@make = (Artist.find(params[:id])).makes.paginate(page: params[:page], per_page: 5)
  end

  def index
  	@artists = Artist.paginate(:page => params[:a_page], per_page: 10, :order => 'name')
  end
end
