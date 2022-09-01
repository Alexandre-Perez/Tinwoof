class UsersController < ApplicationController
  def index
     #@users = User.all
    # @user = current_user
    # @super = request.ip
    # @user.ip = @super
    # @results = Geocoder.search(@super)
    # @results = @results.first.address
    # @user.address = @results
    # @user.save!
    @users = User.all
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end
end
