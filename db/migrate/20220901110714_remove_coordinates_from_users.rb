class RemoveCoordinatesFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :longitude
    remove_column :users, :latitude
  end
end
