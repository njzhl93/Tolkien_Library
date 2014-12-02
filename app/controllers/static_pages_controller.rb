class StaticPagesController < ApplicationController
  def home
  	if signed_in?
              @micropost  = current_user.microposts.build
              @feed_items = current_user.feed.paginate(page: params[:page])
              @bcomment = current_user.bcomments.build
              @bfeed_items = current_user.bfeed.paginate(page: params[:page])
              @fcomment = current_user.fcomments.build
              @ffeed_items = current_user.ffeed.paginate(page: params[:page])
              @mcomment = current_user.mcomments.build
              @mfeed_items = current_user.mfeed.paginate(page: params[:page])
          end
  end

  def help
  end

  def contact
  end
end
