class AddRecurringToTraining < ActiveRecord::Migration[6.0]
  def change
    add_column :trainings, :recurring, :boolean, default: false
  end
end
