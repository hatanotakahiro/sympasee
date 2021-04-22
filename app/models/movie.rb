class Movie < ApplicationRecord

  has_one_attached :movie_image
  belongs_to :user
  has_many :bookmarks
  has_many :reviews
  acts_as_paranoid 

  def review_story_percentage
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_story).round(1).to_f*100/10
    else
      0.0
    end
  end

  def avg_score
    unless self.reviews.empty?
      review_statues = ReviewStatus.where(review_id: self.reviews.ids)
      review_statues.average(:review_story).round(1).to_f
    else
      0.0
    end
  end

end