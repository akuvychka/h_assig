class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :studio, foreign_key: true
      t.references :user, foreign_key: true
      t.text :review_message
      t.float :rate
    end
  end
end
