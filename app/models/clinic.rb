class Clinic < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :telephone, presence: true
  validates :hours, presence: true
  validates :address, presence: true
  validates :eng_op, presence: true
  validates :category, presence: true
  validates :website, presence: true
  has_many :likes, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
