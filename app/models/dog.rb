class Dog < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  validates :gender, presence: true, inclusion: { in: ['male', 'female'] }
  validates :race, presence: true
  validates :name, presence: true
  has_many_attached :photos
end
