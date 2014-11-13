class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
        @user = User.find(params[:id])
  end
  def create
      secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
      @user = User.new(secure_params)
      if @user.save
<<<<<<< HEAD
           sign_in @user
=======
>>>>>>> e8607fcca4cac3e3e537e8be19d6f995334a18b3
      	   flash[:success] = "Welcome to the the Library of Middle Earth!"
           redirect_to @user
      else
           render 'new'
      end
  end
end
