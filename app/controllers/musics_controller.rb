class MusicsController < ApplicationController
  def new
  	@music = Music.new
  end

  def show
  	@music = Music.find(params[:id])
  end

  def index
  	@musicsn = Music.paginate(:page => params[:n_page], per_page: 5, :order => 'created_at DESC')
    @musics = Music.paginate(:page => params[:t_page], per_page: 5)
  	# @musics = Music.all
  end

  def n_index
    @musicsn = Music.paginate(:page => params[:n_page], per_page: 10, :order => 'created_at DESC')
  end

  def t_index
    @musics = Music.paginate(:page => params[:t_page], per_page: 10)
  end

end