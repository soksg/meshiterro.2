class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @post_images=@user.post_images
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(params_user)
    redirect_to user_path(@user.id)
  end

  private

  def params_user
  params.require(:user).permit(:name, :profile_image)
  end

end
