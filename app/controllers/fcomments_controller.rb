class FcommentsController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]
	def create
                @film = Film.find(params[:film_id])
                @fcomment = @film.fcomments.build(fcomment_params)
                @fcomment.film = @film
                @fcomment.user = current_user
                @fcomment.save
                redirect_to @film
    end


    def destroy
        @film = Film.find(params[:film_id])
        @fcomment = Fcomment.find(params[:id])
        @fcomment.destroy
        redirect_to @film
    
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def fcomment_params
            params.require(:fcomment).permit(:film_id, :fcomment, :body)
        end
end
