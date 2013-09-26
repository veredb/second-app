class UsersController < ApplicationController

  def create
      @user = User.create(user_params)
      if @user.save
         redirect_to @user
         flash[:success] = "Thanks for registering. You'll be contacted soon!"
      else
         @title = "sign_up"
         render 'new'
      end
  end      

  def new
     @title = "sign_up"
     @user = User.new
  end


  def show
#      @user = User.find(id_params)
      @user = User.find(params[:id])
      @title = @user.name
  end


  private

  def user_params
    params.require(:user).permit(:name, :middle, :last, :email, :phone, :status, :textbox)
  end


#  def id_params
#    params.require(:user).permit(:id)
#  end
end
