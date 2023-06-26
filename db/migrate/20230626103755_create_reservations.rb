class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true
      t.date :date_départ
      t.date :date_fin

      t.timestamps
    end
  end
end
