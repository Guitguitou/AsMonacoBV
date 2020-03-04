class AddForeignKeyToTraining < ActiveRecord::Migration[6.0]
  def change
    add_reference :trainings, :group, null: false, foreign_key: true
  end
end
