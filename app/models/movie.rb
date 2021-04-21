class Movie < ApplicationRecord

  has_one_attached :movie_image
  belongs_to :user
  has_many :bookmarks
  has_many :reviews
  acts_as_paranoid 

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:movie_score).round(1).to_f*100/5
    else
      0.0
    end
  end

  def avg_score
    unless self.reviews.empty?
      reviews.average(:movie_score).round(1).to_f
    else
      0.0
    end
  end

end