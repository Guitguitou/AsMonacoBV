class AddSexToTraining < ActiveRecord::Migration[6.0]
  def change
    add_column :trainings, :sex, :string
  end
end
