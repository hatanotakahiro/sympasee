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

  has_many :relationships, dependent: :destroy
  has_many :followings, through: :relationships, source: :follower

  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'follower_id', dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :user

  acts_as_paranoid

  validates :nickname, presence: true

  def follow(other_user)
    return if self == other_user

    relationships.find_or_create_by!(follower: other_user)
  end

  def following?(user)
    followings.include?(user)
  end

  def unfollow(relathinoship_id)
    relationships.find(relathinoship_id).destroy!
  end

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
