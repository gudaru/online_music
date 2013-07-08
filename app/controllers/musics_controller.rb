class MusicsController < ApplicationController
  def new
  	@music = Music.new
  end

  def show
  	@music = Music.find(params[:id])
  end

  def index
  	# @musics = Music.paginate(page: params[:page], per_page: 10)
  	@musics = Music.all
  end
end
