class MusicsController < ApplicationController
  def index
  	@musics = Music.all
  end

  def new
  	@music = Music.new
  end

  def create
  	secure_params = params.require(:music).
  	                               permit(:title, :date, :performer, :publisher, :content)
  	@music = Music.new(secure_params)
  	if @music.save
  		redirect_to action: 'index', notice: 'Music was successfully created.'
  	else
  		render action: "new"
    end
  end
end