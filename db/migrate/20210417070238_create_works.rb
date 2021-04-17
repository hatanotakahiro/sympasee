class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :work_title, null: false
      t.text :work_text, null: false
      t.string :long, null: false
      t.date   :release_date
      t.string :producer, null: false
      t.date   :deleted_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
