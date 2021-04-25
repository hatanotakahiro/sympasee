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

  def avg_user_story
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_story).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_impact
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_impact).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_impressed
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_impressed).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_happy
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_happy).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_character
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_character).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_beautiful
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_beautiful).round(1).to_f
    else
      0.0
    end
  end

  def avg_user_score
    unless UserStatus.where(user_id: self.id).blank?
      user_statues = UserStatus.where(user_id: self.id)
      user_statues.average(:user_score).round(1).to_f
    else
      0.0
    end
  end


end
