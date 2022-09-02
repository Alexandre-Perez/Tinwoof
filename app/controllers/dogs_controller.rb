class DogsController < ApplicationController
  before_action :set_dog, only: [:list, :show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @dogs = Dog.where(gender: params[:query])
    else
      @dogs = Dog.all
    end

    @users = User.all
    @online_users = User.where("last_seen_at > ?", 5.minutes.ago)

    #@user = current_user
    #@user_location = request.location.city

    @user_location = "La Rochette"
    # @dogs = Dog.near(@user_location, 100)
    @markers = @dogs.map { |dog| {lat: dog.latitude, lng: dog.longitude} }

  end



  def new
    @dog = Dog.new
  end

  def show
    @dogs = Dog.all
    @dog = Dog.find(params[:id])
    @user = current_user
    #@precise = request.location.city
    #@user.location = @precise
    #@localisation = request.ip
    #@user.ip = @localisation
    @precise = "La Rochette"
    @user.save!
    @user_precise_location = {lat: Geocoder.search(@precise).first.latitude,
                              lng: Geocoder.search(@precise).first.longitude,
                              image_url: helpers.asset_url("human_marker.png")
                              }

    @dog_precise_location = { lat: @dog.latitude, lng: @dog.longitude, image_url: helpers.asset_url("dog.png") }
    @markers = [@user_precise_location, @dog_precise_location]

    @comment = Comment.new
    @comments = Comment.all
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
    params.require(:dog).permit(:gender, :age, :race, :height, :name, :description, :address, photos: [])
  end


end
