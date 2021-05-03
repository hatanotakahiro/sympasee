class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def follower
    @user = current_user
  end

  def follow
    @user = current_user
  end

  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    reviews = Review.where(user_id: @user.id)
    @reviews = reviews.page(params[:page]).per(5)
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :profile, :profile_image)
  end
end
