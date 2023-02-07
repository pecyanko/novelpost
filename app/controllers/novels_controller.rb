class NovelsController < ApplicationController

  def index
    @novels = Novel.all.order(created_at: :desc)
  end
  
  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_paramas)
    if @novel.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def novel_paramas
    params.require(:novel).permit(:title, :author, :review, :category_id, :image)
  end

end
