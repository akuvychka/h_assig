class CreateStudios< ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.references :user, foreign_key: true
      t.string :caption
      t.text :description
      t.float :latitude
      t.float :longitude
      t.time :work_from
      t.time :work_to
      t.integer :day_of_week
      t.float :base_price_per_hour
    end
  end
end
