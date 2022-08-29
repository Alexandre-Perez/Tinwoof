class Dog < ApplicationRecord
  belongs_to :user
  validates :gender, presence: true, inclusion: { in: ['male', 'female'] }
  validates :race, presence: true
  validates :name, presence: true
end
