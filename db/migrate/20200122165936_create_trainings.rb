class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :group

      t.timestamps
    end
  end
end
