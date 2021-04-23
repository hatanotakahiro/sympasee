class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_image
  has_many :movies
  has_many :reviews
  has_many :bookmarks
  has_many :user_statues
  acts_as_paranoid

  validates :nickname, presence: true
end
