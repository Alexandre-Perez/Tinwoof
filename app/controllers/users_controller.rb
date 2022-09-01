class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @super = request.ip
    @user.ip = @super
    @results = Geocoder.search(@super)
    @results = @results.first.address
    @user.address = @results
    @user.save!

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
