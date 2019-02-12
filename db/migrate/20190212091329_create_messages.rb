class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :from_user_id, :references => "users"
      t.integer :to_user_id, :references => "users"
      t.references :studio, foreign_key: true
      t.text :messages
    end
  end
end
