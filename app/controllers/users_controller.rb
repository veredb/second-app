class UsersController < ApplicationController

  def create

      @user = User.create(user_params)
    #  @user = User.new(params[:user])
      if @user.save
         redirect_to @user
         flash[:success] = "Thanks for registering. You'll be contacted soon!"
      else
         @title = "Sign up"
#         flash[:failure] = "A problem accured!"
         render 'new'
      end
  end      

  def new
     @user = User.new
     @title = "Sign up"
  end


  def show
#      @user = User.find(id_params)
      @user = User.find(params[:id])
      @title = @user.name
  end


  private

  def user_params
    params.require(:user).permit(:name, :middle, :last, :email, :phone, :textbox, :status)
  end


#  def id_params
#    params.require(:user).permit(:id)
#  end
end
