class FilmsController < ApplicationController
  def index
  	@films = Film.all
  end

  def new
  	@film = Film.new
  end

  def create
  	secure_params = params.require(:film).
  	                               permit(:title, :date, :director, :character, :content)
  	@film = Film.new(secure_params)
  	if @film.save
  		redirect_to action: 'index', notice: 'Film was successfully created.'
  	else
  		render action: "new"
    end
  end
end