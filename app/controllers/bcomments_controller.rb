class BcommentsController < ApplicationController
    before_filter :signed_in_user, only: [:create, :destroy]
	def create
                @book = Book.find(params[:book_id])
                @bcomment = @book.bcomments.build(bcomment_params)
                @bcomment.book = @book
                @bcomment.user = current_user
                @bcomment.save
                redirect_to @book
    end

    def destroy
        @book = Book.find(params[:book_id])
        @bcomment = Bcomment.find(params[:id])
        @bcomment.destroy
        redirect_to @book
      end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def bcomment_params
            params.require(:bcomment).permit(:book_id, :bcomment, :body, :user_id)
        end
        

end
