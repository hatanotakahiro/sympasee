class ReviewProcess
  # formオブジェクトパターン
  include ActiveModel::Model
  attr_accessor :review_text, :deleted_at, :movie_id, :user_id, :review_id, :review_story, :review_impact, :review_impressed, :review_happy, :review_character, :review_beautiful, :review_score, :user_story, :user_impact, :user_impressed, :user_happy, :user_character, :user_beautiful, :user_score

  def save
    # レビューを保存する
    review = Review.create(user_id: user_id, movie_id: movie_id, review_text: review_text)
    # order_idには、変数orderのidと指定する
    ReviewStatus.create(review_story: review_story, review_impact: review_impact, review_impressed: review_impressed, review_happy: review_happy, review_character: review_character, review_beautiful: review_beautiful, review_score: review_score, review_id: review.id)
    user_story = (review_story.to_i - 5).abs * 2
    user_impact = (review_impact.to_i - 5).abs * 2
    user_impressed = (review_impressed.to_i - 5).abs * 2
    user_happy = (review_happy.to_i - 5).abs * 2
    user_character = (review_character.to_i - 5).abs * 2
    user_beautiful = (review_beautiful.to_i - 5).abs  * 2
    UserStatus.create(user_story: user_story, user_impact: user_impact, user_impressed: user_impressed, user_happy: user_happy, user_character: user_character, user_beautiful: user_beautiful, user_score: review_score, user_id: review.user_id)
  end

end