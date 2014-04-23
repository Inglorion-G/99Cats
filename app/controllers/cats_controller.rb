class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
  end

  def new
    @cat = Cat.new(params[:cat])
  end

end
