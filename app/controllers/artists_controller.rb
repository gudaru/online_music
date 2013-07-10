class ArtistsController < ApplicationController
  def new
  	@artist = Artist.new
  end

  def show
  	@artist = Artist.find(params[:id])
  end

  def index
  	@artists = Artist.paginate(:page => params[:a_page], per_page: 20, :order => 'name')
  end
end
