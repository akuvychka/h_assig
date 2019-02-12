class RenameFieldForMEquip < ActiveRecord::Migration[5.2]
  def change
    rename_column :musical_equipments, :sort_description, :short_description
  end
end
