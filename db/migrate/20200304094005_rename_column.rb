class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :trainings, :start_date, :start_time
    rename_column :trainings, :end_date, :end_time
  end
end
