class CreateAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :associations do |t|
      t.string :nom
      t.string :category
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
