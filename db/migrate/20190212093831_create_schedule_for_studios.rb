class CreateScheduleForStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_for_studios do |t|
      t.references :studio, foreign_key: true
      t.integer :day_of_week
      t.time :from
      t.time :to
    end
  end
end
