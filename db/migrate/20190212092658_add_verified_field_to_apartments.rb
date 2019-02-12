class AddVerifiedFieldToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :verified, :boolean, default: false
  end
end
