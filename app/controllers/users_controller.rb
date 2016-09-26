class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(allowed_user_params_whitelisted)
    if @user.save
      flash[:success] = "Weclome #{@user.name}"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  private
      def allowed_user_params_whitelisted
          params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

end
