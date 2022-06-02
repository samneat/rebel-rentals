class Ship < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :crew, presence:true
  validates :passengers, presence:true
  has_one_attached :photo
end
