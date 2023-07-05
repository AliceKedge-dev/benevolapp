class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :animal_count, :integer, default: 0
    add_column :users, :social_count, :integer, default: 0
    add_column :users, :environnement_count, :integer, default: 0
  end
end
