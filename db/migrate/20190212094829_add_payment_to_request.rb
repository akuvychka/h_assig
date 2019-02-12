class AddPaymentToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_requests, :booking_payments, foreign_key: true
  end
end
