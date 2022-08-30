class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:gender, :age, :race, :height, :name, :description)
end
