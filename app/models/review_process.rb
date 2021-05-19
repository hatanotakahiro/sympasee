class ReviewProcess
  # formオブジェクトパターン
  include ActiveModel::Model
  attr_accessor :review_text, :deleted_at, :movie_id, :user_id, :review_id, :review_story, :review_impact, :review_impressed, :review_happy, :review_character, :review_beautiful, :review_score, :user_story, :user_impact, :user_impressed, :user_happy, :user_character, :user_beautiful, :user_score

  with_options presence: true do

    validates :review_score
    validates :movie_id
    validates :user_id
    validates :review_text
    validates :review_score, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "は0〜100点内でお願いします" },
    format: { with: /\A[0-9]+\z/, message:"は半角英数字でお願いします" }
  end

  def save
    # レビューを保存する
    review = Review.create(user_id: user_id, movie_id: movie_id, review_text: review_text)
    if review_story.blank?
      review_story = 0
    end
    if review_impact.blank?
      review_impact = 0
    end
    if review_impressed.blank?
      review_impressed = 0
    end
    if review_happy.blank?
      review_happy = 0
    end
    if review_character.blank?
      review_character = 0
    end
    if review_beautiful.blank?
      review_beautiful = 0
    end
    ReviewStatus.create(review_story: review_story, review_impact: review_impact, review_impressed: review_impressed, review_happy: review_happy, review_character: review_character, review_beautiful: review_beautiful, review_score: review_score, review_id: review.id)
    # ユーザーパラメーター（裏パラメーター）
    user_story = (review_story.to_i - 5).abs * 2
    user_impact = (review_impact.to_i - 5).abs * 2
    user_impressed = (review_impressed.to_i - 5).abs * 2
    user_happy = (review_happy.to_i - 5).abs * 2
    user_character = (review_character.to_i - 5).abs * 2
    user_beautiful = (review_beautiful.to_i - 5).abs  * 2
    UserStatus.create(user_story: user_story, user_impact: user_impact, user_impressed: user_impressed, user_happy: user_happy, user_character: user_character, user_beautiful: user_beautiful, user_score: review_score, user_id: review.user_id)
  end

  

end