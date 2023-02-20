class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @novels = current_user.novels

    favorite = Favorite.where(user_id: current_user.id).pluck(:novel_id)
    @favorite_list = novel.find(favorites)
  end
end
