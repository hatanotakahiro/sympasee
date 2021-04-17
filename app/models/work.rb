class Work < ApplicationRecord

  has_one_attached :work_image
  belongs_to :user
  has_many :bookmarks
  has_many :reviews
  acts_as_paranoid 

end