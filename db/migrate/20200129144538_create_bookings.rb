class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :training, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status, default: "En attente"

      t.timestamps
    end
  end
end
