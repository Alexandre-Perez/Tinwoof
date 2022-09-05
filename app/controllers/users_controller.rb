class UsersController < ApplicationController
  def index
    @users = User.all
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        image_url: helpers.asset_url("dog.png")
      }
    end
  end

  def show
    @dogs = current_user.dogs
    @user = current_user
    @user.address = "La Rochette"
    @user.save!
  end
end
