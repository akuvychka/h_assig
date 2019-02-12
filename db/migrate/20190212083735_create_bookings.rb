class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :studios, foreign_key: true
      t.date :book_from
      t.date :book_to
    end
  end
end
