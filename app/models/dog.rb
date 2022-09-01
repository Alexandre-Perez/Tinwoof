class Dog < ApplicationRecord

  belongs_to :user
  has_many :comments
  validates :gender, presence: true, inclusion: { in: ['male', 'female'] }
  validates :race, presence: true
  validates :name, presence: true

  has_many_attached :photos
end
