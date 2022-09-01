class UsersController < ApplicationController
  def index
<<<<<<< HEAD
=======
    @users = User.all
    # @user = current_user
    # @super = request.ip
    # @user.ip = @super
    # @results = Geocoder.search(@super)
    # @results = @results.first.address
    # @user.address = @results
    # @user.save!
>>>>>>> 24c7ab1b9075b895b646940c021d0952ce89b07b
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        image_url: helpers.asset_url("dog.png")
      }
    end
  end
end
