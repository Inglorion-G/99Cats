class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
  end

  def new
    @cat = Cat.new(params[:cat])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :color, :age, :birth_date, :sex)
  end

end
