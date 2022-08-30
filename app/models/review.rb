class Review < ApplicationRecord
  has_many :user_reviews, dependent: :destroy
  has_many :users, through: :user_reviews
end
