class UsersController < ApplicationController
  def index
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end
end
