class CreateUserStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_statuses do |t|
      t.integer       :user_story, null: false
      t.integer       :user_impact, null: false
      t.integer       :user_impressed, null: false
      t.integer       :user_happy, null: false
      t.integer       :user_character, null: false
      t.integer       :user_beautiful, null: false
      t.integer       :user_score, null: false
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
