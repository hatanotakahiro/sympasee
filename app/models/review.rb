class Review < ApplicationRecord
  has_many :likes
  belongs_to :user
  belongs_to :movie
  has_one :review_status, dependent: :destroy
end
