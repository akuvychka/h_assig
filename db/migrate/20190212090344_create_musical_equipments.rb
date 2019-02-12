class CreateMusicalEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :musical_equipments do |t|
      t.string :name
      t.text :sort_description
    end
  end
end
