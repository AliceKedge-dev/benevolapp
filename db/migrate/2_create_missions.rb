class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.date :date_création
      t.string :nom
      t.time :temps
      t.string :description
      t.string :localisation
      t.date :date
      t.string :photo_url
      t.string :category
      t.references :association, null: false, foreign_key: true
      t.integer :participants_max

      t.timestamps
    end
  end
end
