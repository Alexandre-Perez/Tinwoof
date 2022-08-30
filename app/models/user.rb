class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs
  has_many :user_reviews
  has_many :reviews, through: :user_reviews
  has_many :user_chatrooms
  has_many :chatrooms, through: :user_chatrooms
  has_many :messages
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached :photo
end
