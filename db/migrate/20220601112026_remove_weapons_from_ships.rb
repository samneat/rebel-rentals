class RemoveWeaponsFromShips < ActiveRecord::Migration[7.0]
  def change
    remove_column :ships, :weapons, :string
  end
end
