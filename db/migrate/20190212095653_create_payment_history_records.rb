class CreatePaymentHistoryRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_history_records do |t|
      t.references :user, foreign_key: true
      t.references :studio, foreign_key: true
      t.references :currency, foreing_key: true
      t.float :price
      t.date :payment_date
    end

    add_reference :bookings, :payment_history_records, foreign_key: true
  end
end
