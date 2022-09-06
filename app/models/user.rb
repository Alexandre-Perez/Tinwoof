class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs
  has_many :comments

  has_many :chatrooms,
    ->(user) {
    unscope(where: :user_id)
    .where("first_user_id = :user_id OR second_user_id = :user_id", user_id: user.id)
    },
    class_name: 'Chatroom',
    dependent: :destroy

  has_many :messages, dependent: :destroy

  def full_name
  "#{first_name.capitalize} #{last_name.capitalize}"
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached :photo
end
