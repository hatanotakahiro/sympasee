class ReviewProcess
  # formオブジェクトパターン
  include ActiveModel::Model
  attr_accessor :review_text, :deleted_at, :movie_id, :user_id, :review_id, :review_story, :review_impact, :review_impressed, :review_happy, :review_character, :review_beautiful, :review_score, :user_story, :user_impact, :user_impressed, :user_happy, :user_character, :user_beautiful, :user_score

  def save
    review = Review.create(user_id: user_id, movie_id: movie_id, review_text: review_text)
    # 住所を保存する
    # order_idには、変数orderのidと指定する
    binding.pry
    ReviewStatus.create(review_story: review_story, review_impact: review_impact, review_impressed: review_impressed, review_happy: review_happy, review_character: review_character, review_beautiful: review_beautiful, review_score: review_score, review_id: review.id)
    binding.pry
  end

end

