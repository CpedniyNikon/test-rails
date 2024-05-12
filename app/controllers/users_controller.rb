class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:name, :nickname, :email, :password)
    if user_params.values.any?(&:blank?)
      flash[:alert] = 'Please fill in all fields'
      redirect_to new_user_path
    else
      User.create(user_params)
      redirect_to root_path, notice: 'You successfully registered'
    end
  end
end
