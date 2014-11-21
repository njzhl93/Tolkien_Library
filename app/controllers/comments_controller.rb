class CommentsController < ApplicationController
    before_filter :signed_in_user, only: [:create, :destroy]
    before_filter :correct_user,   only: :destroy
	def create
                @book = Book.find(params[:book_id])
                @comment = @book.comments.build(comment_params)
                @comment.book = @book
                @comment.user = current_user
                @comment.save
                redirect_to @book
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def comment_params
            params.require(:comment).permit(:book_id, :comment, :body)
        end
end
