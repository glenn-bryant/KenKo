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
end
