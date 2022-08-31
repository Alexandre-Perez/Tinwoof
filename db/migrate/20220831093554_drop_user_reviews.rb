class DropUserReviews < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_reviews, force: :cascade
  end
end
