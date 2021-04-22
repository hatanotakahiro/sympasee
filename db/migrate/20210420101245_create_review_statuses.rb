class CreateReviewStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :review_statuses do |t|
      t.integer       :review_story, null: false
      t.integer       :review_impact, null: false
      t.integer       :review_impressed, null: false
      t.integer       :review_happy, null: false
      t.integer       :review_character, null: false
      t.integer       :review_beautiful, null: false
      t.integer       :review_score, null: false
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end