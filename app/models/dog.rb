class Dog < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :gender, presence: true, inclusion: { in: ['Male', 'Female'] }
  validates :race, presence: true
  validates :name, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :photos
end
