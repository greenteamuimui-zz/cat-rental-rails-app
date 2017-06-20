class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = selected_cat
    render :show
  end


  private
    def selected_cat
      Cat.find_by(id: params[:id])
    end

end
