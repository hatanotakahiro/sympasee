class Movie < ApplicationRecord

  has_one_attached :movie_image
  belongs_to :user
  has_many :reviews, dependent: :destroy

  acts_as_paranoid 
  acts_as_taggable

  with_options presence: true do
    validates :movie_title
    validates :movie_text
    validates :long
    validates :producer
    validates :character
  end

  def review_story_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_story).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_impact_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_impact).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_impressed_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_impressed).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_happy_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_happy).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_character_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_character).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_beautiful_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_beautiful).round(1).to_f*100/10
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_score).round(1).to_f*100/10
    else
      0.0
    end
  end



  def avg_story
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_story).round(1).to_f
    else
      0.0
    end
  end

  def avg_impact
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_impact).round(1).to_f
    else
      0.0
    end
  end

  def avg_impressed
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_impressed).round(1).to_f
    else
      0.0
    end
  end

  def avg_happy
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_happy).round(1).to_f
    else
      0.0
    end
  end

  def avg_character
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_character).round(1).to_f
    else
      0.0
    end
  end

  def avg_beautiful
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_beautiful).round(1).to_f
    else
      0.0
    end
  end

  def avg_score
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_score).round(1).to_f
    else
      0.0
    end
  end

end