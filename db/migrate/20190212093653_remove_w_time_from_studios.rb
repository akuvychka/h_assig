class RemoveWTimeFromStudios < ActiveRecord::Migration[5.2]
  def change
    remove_column :studios, :work_from
    remove_column :studios, :work_to
    remove_column :studios, :day_of_week
  end
end
