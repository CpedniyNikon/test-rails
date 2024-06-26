class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'You successfully registered'
    else
      flash.now[:alert] = 'Please fill in all fields'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      redirect_to root_path, notice: 'user data is changed'
    else
      flash.now[:alert] = 'user cant be changed'

      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    # TODO
    # session.delete(:user_id)

    redirect_to root_path, notice: 'user deleted'
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email,
    :password, :password_confirmation)
  end
end
