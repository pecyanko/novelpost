class FavoritesController < ApplicationController

  before_action :set_novel
  before_action :authenticate_user! 

  def create
    if @novel.user_id != current_user.id
      @favorite = Favorite.create(user_id: current_user.id, novel_id: @novel.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, novel_id: @novel.id)
    @favorite.destroy
  end

  private
  def set_novel
    @novel = Novel.find(params[:novel_id])
  end
  

end
