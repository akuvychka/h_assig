class CreateBookingPayment < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_payments do |t|
      t.references :user, foreign_key: true
      t.references :studio, foreign_key: true
      t.references :currency, foreing_key: true
      t.float :price
      t.integer :status
      t.date :expiration
    end
  end
end
