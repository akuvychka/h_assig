class CreateCurrency < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :currency_name
    end
  end
end
