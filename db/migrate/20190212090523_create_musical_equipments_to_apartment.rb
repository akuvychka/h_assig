class CreateMusicalEquipmentsToApartment < ActiveRecord::Migration[5.2]
  def change
    create_table :musical_equipments_to_apartments do |t|
      t.references :studios, foreign_key: true
      t.references :musical_equipments, foreign_key: true
    end
  end
end
