class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :dogs
  has_many :comments
  has_many :user_chatrooms
  has_many :chatrooms, through: :user_chatrooms
  has_many :messages
  validates :first_name, presence: true
  validates :last_name, presence: true
  #validates :address, presence: true
  has_one_attached :photo
end
