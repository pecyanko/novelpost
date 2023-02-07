class NovelsController < ApplicationController

  def index
    @novels = Novel.all
  end
  
  def new
    @novel = Novel.new
  end

end
