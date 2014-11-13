class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
        @user = User.find(params[:id])
        @microposts = @user.microposts
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
end
