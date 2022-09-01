class UsersController < ApplicationController
  def index
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
