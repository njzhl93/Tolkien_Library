class McommentsController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]
	def create
                @music = Music.find(params[:music_id])
                @mcomment = @music.mcomments.build(mcomment_params)
                @mcomment.music = @music
                @mcomment.user = current_user
                @mcomment.save
                redirect_to @music
    end

    def destroy
        @music = Music.find(params[:music_id])
        @mcomment = Mcomment.find(params[:id])
        @mcomment.destroy
        redirect_to @music
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def mcomment_params
            params.require(:mcomment).permit(:music_id, :mcomment, :body, :user_id)
        end
end
