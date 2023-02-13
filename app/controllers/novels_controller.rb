class NovelsController < ApplicationController

  before_action :set_novel, except: [:index, :new, :create]

  def index
    @novels = Novel.all.order(created_at: :desc)
  end
  
  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    @novel.user_id = current_user.id
    if @novel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @novel = Novel.find(params[:id])
  end

  def edit
    if current_user != @novel.user
      redirect_to root_path
    end

  end

  def update
    if @novel.update(novel_params)
      redirect_to novel_path(@novel)
    else
      redirect_to root_path
    end
  end


  def destroy
    if @novel.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end

  end


  private

  def novel_params
    params.require(:novel).permit(:title, :author, :review, :category_id, :image).merge(user_id: current_user.id)
  end

  def set_novel
    @novel = Novel.find(params[:id])
  end
end
