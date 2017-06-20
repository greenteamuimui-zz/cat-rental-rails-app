class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = selected_cat
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = selected_cat
    render :edit
  end


  private
    def selected_cat
      Cat.find_by(id: params[:id])
    end
    def cat_params
      params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
    end

end
