class MusicsController < ApplicationController
  def new
  	@music = Music.new
  end

  def show
  	@music = Music.find(params[:id])
    @make = (Music.find(params[:id])).makes
    @comment = (Music.find(params[:id])).comments.paginate(page: params[:page], per_page: 5)
    @commentp = current_user.comments.build
  end

  def index
  	@musicsn = Music.paginate(:page => params[:n_page], per_page: 5, :order => 'name')
    @musics = Music.paginate(:page => params[:t_page], per_page: 5)
  	# @musics = Music.all
  end

  def n_index
    @musicsn = Music.paginate(:page => params[:n_page], per_page: 10, :order => 'name')
  end

  def t_index
    @musics = Music.paginate(:page => params[:t_page], per_page: 10)
  end
end