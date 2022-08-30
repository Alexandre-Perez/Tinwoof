class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @doge = Dog.find(params[:id])
  end
end
