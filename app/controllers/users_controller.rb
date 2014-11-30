class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  def new
  	@user = User.new
  end

  def index 
    @users = User.paginate(page: params[:page])
  end

  def show
        @user = User.find(params[:id])
        @microposts = @user.microposts
        @bcomments = @user.bcomments
        @fcomments = @user.fcomments
        @mcomments = @user.mcomments
  end

  def edit
    @user = User.find(params[:id])
  end
  def create
      secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
      @user = User.new(secure_params)
      if @user.save
           sign_in @user
      	   flash[:success] = "Welcome to the the Library of Middle Earth!"
           redirect_to @user
      else
           render 'new'
      end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end
    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end
