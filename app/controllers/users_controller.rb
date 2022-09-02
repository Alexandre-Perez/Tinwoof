class UsersController < ApplicationController
  def index
    @users = User.all
    # @user = current_user
    # @super = request.ip
    # @user.ip = @super
    # @results = Geocoder.search(@super)
    # @results = @results.first.address
    # @user.address = @results
    # @user.save!

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
