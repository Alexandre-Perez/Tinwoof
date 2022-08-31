class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
    @users = User.all
    @online_users = User.where("last_seen_at > ?", 5.minutes.ago)
  end

  def new
    @dogs = Dog.all
    @dog = Dog.new
  end

  def show
    @user = current_user
    # @precise = request.location.city
    @precise = "La Rochette"
    @user.location = @precise
    @user.save!
    @dog = Dog.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
    @localisation = request.ip
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user

    if @dog.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dog.update(dog_params)
      redirect_to new_dog_path
    else
      render :edit
    end
  end

  def destroy
    @dog.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:gender, :age, :race, :height, :name, :description, photos: [])
  end
end
